## エクスポートするディレクトリを決定する
$exportDir = [System.IO.Path]::GetFullPath((Join-Path -Path $PSScriptRoot -ChildPath "../dat"))

## コピー先のディレクトリを決定する
$destinationDir = "C:\Users\shuns\source\fanaticServe\fanaticServe\DataSource\"

## テーブルデータをエクスポートする

function Remove-NulBytesFromFile {
    param(
        [Parameter(Mandatory = $true)]
        [string]$Path
    )

    if (-not (Test-Path -LiteralPath $Path)) {
        return
    }

    $bytes = [System.IO.File]::ReadAllBytes($Path)
    $cleanBytes = $bytes | Where-Object { $_ -ne 0x00 }
    if ($cleanBytes.Count -lt $bytes.Count) {
        [System.IO.File]::WriteAllBytes($Path, $cleanBytes)
    }
}

#テーブル名
$tables = @(
     "abstract_album"
    , "abstract_album_link"
    , "abstract_album_note"
    , "abstract_event"
    , "abstract_event_link"
    , "abstract_event_note"
    , "album"
    , "album_note"
    , "label"
    , "live_event"
    , "live_event_note"
    , "live_event_url"
    , "media"
    , "organization"
    , "part_type"
    , "person"
    , "role"
    , "roleOnAlbum"
    , "roleOnSong"
    , "set_list"
    , "set_list_note"
    , "site"
    , "song"
    , "song_note"
    , "track"
)

#各テーブルをエクスポートする
# データベース接続情報
$serverName = [System.Environment]::GetEnvironmentVariable("LOCAL_DATABASE_SERVER", [System.EnvironmentVariableTarget]::User)
$databaseName = [System.Environment]::GetEnvironmentVariable("LOCAL_DBNAME_LUNATIC_SERVE", [System.EnvironmentVariableTarget]::User)
$authType = "-T"  # Windows認証を使用する場合

# 各テーブルをエクスポートする
$tables | ForEach-Object {
    $tableName = $_
    $outputFile = Join-Path -Path $exportDir -ChildPath "$tableName.dat"
    $bcpCommand = "bcp $databaseName.dbo.$tableName out $outputFile -c -C 65001 -S $serverName $authType"
    
    Write-Output "Exporting table: $tableName to file: $outputFile"
    Invoke-Expression $bcpCommand
    Remove-NulBytesFromFile -Path $outputFile
}

## コピー先のディレクトリにエクスポートしたファイルをコピーする
Get-ChildItem -Path (Join-Path -Path $exportDir -ChildPath "*.dat") | ForEach-Object {
    $sourceFile = $_.FullName
    $destinationFile = Join-Path -Path $destinationDir -ChildPath $_.Name
    Write-Output "Copying file: $sourceFile to $destinationFile"
    Copy-Item -Path $sourceFile -Destination $destinationFile -Force
}   
