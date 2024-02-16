$soc = @(
  "attendant.html"
, "honor.html"
, "nfhead.html"
, "nfkyoto.html"
, "nftokyo.html"
, "presenter.html"
, "staff.html", "welcomer.html"
)
$soc | %{
    $html = "C:\repos\B9a2hUnacN3N\$_"
    $data = Get-Content $html
    $data[20] = $data[20] +"`n<link rel=`"stylesheet`" href=`"common.css`">"
    $data | Out-File $html -Encoding UTF8
}
