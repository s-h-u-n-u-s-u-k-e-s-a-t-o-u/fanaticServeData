<#
SQL Server のテーブル、外部キー、インデックスの DDL を取得してファイルに保存するスクリプト
使い方:
  - ユーザー環境変数 `LOCAL_DATABASE_SERVER` と `LOCAL_DBNAME_LUNATIC_SERVE` を参照します
  - 必要に応じて `Install-Module -Name SqlServer` で SqlServer モジュールをインストールしてください
  例: `powershell -ExecutionPolicy Bypass -File .\export_ddl.ps1`
#>

# 環境変数から接続情報を取得
$serverName = [System.Environment]::GetEnvironmentVariable("LOCAL_DATABASE_SERVER", [System.EnvironmentVariableTarget]::User)
$databaseName = [System.Environment]::GetEnvironmentVariable("LOCAL_DBNAME_LUNATIC_SERVE", [System.EnvironmentVariableTarget]::User)

if (-not $serverName -or -not $databaseName) {
    Write-Error "環境変数 LOCAL_DATABASE_SERVER と LOCAL_DBNAME_LUNATIC_SERVE を設定してください。"
    exit 1
}

# 出力ディレクトリ(相対パスはこのスクリプトの位置から見た ../dat/ddl )
$baseDir = Join-Path -Path $PSScriptRoot -ChildPath "..\..\sql"
$tablesDir = Join-Path $baseDir "tables"
$fksDir = Join-Path $baseDir "foreign_keys"
$indexesDir = Join-Path $baseDir "indexes"
$combinedFile = Join-Path $baseDir "full_ddl.sql"

# ディレクトリ作成
$dirs = @($tablesDir, $fksDir, $indexesDir)
foreach ($d in $dirs) { if (-not (Test-Path $d)) { New-Item -ItemType Directory -Path $d | Out-Null } }

# SqlServer (SMO) モジュールの読み込み
try {
    Import-Module SqlServer -ErrorAction Stop
} catch {
    Write-Error "SqlServer モジュールが必要です。管理者として PowerShell を開き、Install-Module -Name SqlServer を実行してインストールしてください。"
    exit 1
}

# SMO オブジェクト取得
$server = New-Object Microsoft.SqlServer.Management.Smo.Server $serverName
$db = $server.Databases[$databaseName]
if (-not $db) {
    Write-Error "データベース '$databaseName' が見つかりません。サーバー '$serverName' を確認してください。"
    exit 1
}

# スクリプトオプション
$options = New-Object Microsoft.SqlServer.Management.Smo.ScriptingOptions
$options.IncludeIfNotExists = $true
$options.SchemaQualify = $true
$options.IncludeHeaders = $false
$options.DriAll = $true
$options.Indexes = $true
$options.NoCommandTerminator = $false

# 結合ファイルクリア
"-- DDL export generated on $(Get-Date -Format u)`r`n" | Out-File -FilePath $combinedFile -Encoding utf8 -Force

# テーブルの DDL を出力
foreach ($table in $db.Tables | Where-Object { -not $_.IsSystemObject }) {
    $schema = $table.Schema
    $name = $table.Name
    $safeName = "{0}.{1}" -f $schema, $name
    Write-Output "Scripting table: '$safeName'"

    $script = $table.Script($options) -join "`r`n"

#    $fileName = "{0}.{1}.table.sql" -f $schema, $name
    $fileName = "{0}.sql" -f $name
    $filePath = Join-Path $tablesDir $fileName
    $header = "-- Table: $safeName`r`n"
    ($header + $script + "`r`n") | Out-File -FilePath $filePath -Encoding utf8 -Force

    # 結合ファイルに追記
    ($header + $script + "`r`n") | Out-File -FilePath $combinedFile -Encoding utf8 -Append

    # --- テーブル/カラムのコメント（MS_Description）を出力 ---
    # テーブルコメント
    foreach ($tep in $table.ExtendedProperties) {
        if ($tep.Name -eq 'MS_Description' -and $tep.Value) {
            $tcomment = $tep.Value.ToString() -replace "'", "''"
            $ttsql = @"
-- Table comment: $schema.$name
IF EXISTS (
    SELECT 1 FROM sys.extended_properties ep
    JOIN sys.tables t ON t.object_id = ep.major_id
    JOIN sys.schemas s ON t.schema_id = s.schema_id
    WHERE ep.name = 'MS_Description' AND s.name = '$schema' AND t.name = '$name' AND ep.minor_id = 0
)
BEGIN
    EXEC sp_updateextendedproperty @name=N'MS_Description', @value=N'$tcomment', @level0type=N'Schema', @level0name=N'$schema', @level1type=N'Table', @level1name=N'$name';
END
ELSE
BEGIN
    EXEC sp_addextendedproperty @name=N'MS_Description', @value=N'$tcomment', @level0type=N'Schema', @level0name=N'$schema', @level1type=N'Table', @level1name=N'$name';
END
GO

"@
            $ttsql | Out-File -FilePath $filePath -Encoding utf8 -Append
            $ttsql | Out-File -FilePath $combinedFile -Encoding utf8 -Append
        }
    }

    # カラムコメント
    foreach ($col in $table.Columns) {
        foreach ($ep in $col.ExtendedProperties) {
            if ($ep.Name -eq 'MS_Description' -and $ep.Value) {
                $comment = $ep.Value.ToString() -replace "'", "''"
                $tsql = @"
-- Column comment: $schema.$name.$($col.Name)
IF EXISTS (
    SELECT 1 FROM sys.extended_properties ep
    JOIN sys.tables t ON t.object_id = ep.major_id
    JOIN sys.schemas s ON t.schema_id = s.schema_id
    JOIN sys.columns c ON c.object_id = t.object_id AND c.column_id = ep.minor_id
    WHERE ep.name = 'MS_Description' AND s.name = '$schema' AND t.name = '$name' AND c.name = '$($col.Name)'
)
BEGIN
    EXEC sp_updateextendedproperty 
        @name=N'MS_Description', 
        @value=N'$comment', 
        @level0type=N'Schema', @level0name=N'$schema', 
        @level1type=N'Table',  @level1name=N'$name', 
        @level2type=N'Column', @level2name=N'$($col.Name)';
END
ELSE
BEGIN
    EXEC sp_addextendedproperty 
        @name=N'MS_Description', 
        @value=N'$comment', 
        @level0type=N'Schema', @level0name=N'$schema', 
        @level1type=N'Table',  @level1name=N'$name', 
        @level2type=N'Column', @level2name=N'$($col.Name)';
END
GO

"@
                $tsql | Out-File -FilePath $filePath -Encoding utf8 -Append
                $tsql | Out-File -FilePath $combinedFile -Encoding utf8 -Append
            }
        }
    }
}

# 外部キーの DDL を出力 (テーブル毎に存在する ForeignKey オブジェクトを使用)
foreach ($table in $db.Tables | Where-Object { -not $_.IsSystemObject }) {
    foreach ($fk in $table.ForeignKeys) {
        $fkName = $fk.Name
        $parent = "{0}.{1}" -f $table.Schema, $table.Name
        Write-Output "Scripting foreign key: '$fkName' on '$parent'"

        $script = $fk.Script($options) -join "`r`n"
        $fileName = "{0}.{1}.fk.sql" -f $table.Name, $fkName
        $filePath = Join-Path $fksDir $fileName
        $header = "-- Foreign Key: $fkName (on $parent)`r`n"
        ($header + $script + "`r`n") | Out-File -FilePath $filePath -Encoding utf8 -Force

        ($header + $script + "`r`n") | Out-File -FilePath $combinedFile -Encoding utf8 -Append
    }
}

# インデックスの DDL を出力 (テーブルごとの Index オブジェクト)
foreach ($table in $db.Tables | Where-Object { -not $_.IsSystemObject }) {
    foreach ($index in $table.Indexes) {
        $indexName = $index.Name
        # 一部システムインデックスは Name が null のことがある
        if (-not $indexName) { continue }
        $parent = "{0}.{1}" -f $table.Schema, $table.Name
        Write-Output "Scripting index: '$indexName' on '$parent'"

        $script = $index.Script($options) -join "`r`n"
        $fileName = "{0}.{1}.index.sql" -f $table.Name, $indexName
        $filePath = Join-Path $indexesDir $fileName
        $header = "-- Index: $indexName (on $parent)`r`n"
        ($header + $script + "`r`n") | Out-File -FilePath $filePath -Encoding utf8 -Force

        ($header + $script + "`r`n") | Out-File -FilePath $combinedFile -Encoding utf8 -Append
    }
}

Write-Output "DDL export complete. Files saved under: '$baseDir'"

