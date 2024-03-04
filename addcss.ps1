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
, "mainja.html"
, "mainen.html"
)
$soc | %{
  $html = "C:\repos\B9a2hUnacN3N\$_"
  $data = Get-Content $html
  if ($data[21] -notmatch ".*common.css.*") {
    for ($i = 0; $i -lt $data.Count; $i++) {
      if ($data[$i] -match "<a href=") {
        $data[$i] = $data[$i] -replace "<a href=", "<a target=`"_blank`" href="
      }
    } 
    $data[20] = $data[20] +"`n<link rel=`"stylesheet`" href=`"common.css`">"
    $data | Out-File $html -Encoding UTF8
  }
}
