while($true)
{
sleep(2);
$s= Invoke-WebRequest -useBasicParsing -Uri "https://www.bybt.com/api/api/futures/longShortRate?timeType=3&symbol=BTC" -Headers @{
"method"="GET"
  "authority"="www.bybt.com"
  "scheme"="https"
  "path"="/api/api/futures/longShortRate?timeType=3&symbol=BTC"
  "accept"="application/json, text/plain, */*"
  "user-agent"="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36"
  "dnt"="1"
  "sec-fetch-site"="same-origin"
  "sec-fetch-mode"="cors"
  "sec-fetch-dest"="empty"
  "referer"="https://www.bybt.com/LongShortRatio"
  "accept-encoding"="gzip, deflate, br"
  "accept-language"="en-US,en;q=0.9"
  "cookie"="i18n_redirected=en"
}

$s | Select-Object -Property Content | Format-List;

}