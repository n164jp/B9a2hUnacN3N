$soc = @(
  "attendant.html"
, "honor.html"
, "nfhead.html"
, "nfkyoto.html"
, "nftokyo.html"
, "presenter.html"
, "staff.html"
, "welcomer.html"
, "questioner.html"
, "main.html"
, "lplan.html"
)
$qstr = "?" + (Get-Random -Maximum 9999 -Minimum 1000)
$soc | %{
  $html = "C:\repos\B9a2hUnacN3N\$_"
  if (!(Test-Path $html)) {
    return
  }
  $data = Get-Content $html
  if ($data[21] -notmatch ".*common.css.*") {
    for ($i = 0; $i -lt $data.Count; $i++) {
      if ($data[$i] -match "<a href=") {
        $data[$i] = $data[$i] -replace "<a href=", "<a target=`"_blank`" href="
      }
    } 
    $data[20] = $data[20] + "`n<link rel=`"stylesheet`" href=`"common.css${qstr}`">"
    $data | Out-File $html -Encoding UTF8
  }
}
