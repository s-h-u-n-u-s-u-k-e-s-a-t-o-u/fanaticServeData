## Azure SqlServerのテーブルに
## データファイルからインポートする

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
   , "media"
   , "organization"
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

$serverName = [System.Environment]::GetEnvironmentVariable("REMOTE_DATABASE_SERVER", [System.EnvironmentVariableTarget]::User)
$databaseName = [System.Environment]::GetEnvironmentVariable("REMOITE_DBNAME_LUNATIC_SERVE", [System.EnvironmentVariableTarget]::User)
$username = [System.Environment]::GetEnvironmentVariable("REMOITE_DBUSER_LUNATIC_SERVE", [System.EnvironmentVariableTarget]::User)
$password = [System.Environment]::GetEnvironmentVariable("REMOITE_DBPASS_LUNATIC_SERVE", [System.EnvironmentVariableTarget]::User)

# 各テーブルをインポートする
# Write-Outputで進行状況を表示するため、1コマンドンドごとにInvoke-Expressionを使用
$tables | ForEach-Object {
    $tableName = $_

    # テーブルのレコードを削除するSQLクエリ
    $deleteQuery = "DELETE FROM $tableName"

    # テーブルのレコードを削除
    $sqlcmdCommand = "sqlcmd -S $serverName -d $databaseName -U $username -P $password -Q `"$deleteQuery`""
    Invoke-Expression $sqlcmdCommand
    
    $dataFile = "..\dat\$tableName.dat"

    # bcpコマンドの構築
    $bcpCommand = "bcp $databaseName.dbo.$tableName in $dataFile -c -C 65001 -S $serverName -U $username -P $password -E"

    # データのインポート
    Write-Output "Importing data from file: $dataFile to table: $tableName"
    Invoke-Expression $bcpCommand
}
