## テーブルデータをエクスポートする

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

#各テーブルをエクスポートする
# データベース接続情報
$serverName = [System.Environment]::GetEnvironmentVariable("LOCAL_DATABASE_SERVER", [System.EnvironmentVariableTarget]::User)
$databaseName = [System.Environment]::GetEnvironmentVariable("LOCAL_DBNAME_LUNATIC_SERVE", [System.EnvironmentVariableTarget]::User)
$authType = "-T"  # Windows認証を使用する場合

# 各テーブルをエクスポートする
$tables | ForEach-Object {
    $tableName = $_
    $outputFile = "../dat/$tableName.dat"
    $bcpCommand = "bcp $databaseName.dbo.$tableName out $outputFile -c -C 65001 -S $serverName $authType"
    
    Write-Output "Exporting table: $tableName to file: $outputFile"
    Invoke-Expression $bcpCommand
}