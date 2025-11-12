sal wh write-host
$h=Get-Host
$w=$h.UI.RawUI
$nws=$w.WindowSize
$nws.Width=25
$nws.Height=6
$w.WindowSize=$nws
clear
$dcap=(gwmi -Namespace root\wmi -Class BatteryStaticData).DesignedCapacity
$fcap=(gwmi -Namespace root\wmi -Class BatteryFullChargedCapacity).FullChargedCapacity
$perc=[math]::Round(($fcap / $dcap) * 100, 2)
$perc_r=[math]::Round($perc,0)
if($perc_r-gt85){$col='Green'}elseif($perc_r-lt70){$col='Red'}else{$col='Yellow'}
$bar_f=[math]::Round(($perc/4),0)
wh $(" "*$bar_f) -BackgroundColor $col -NoNewline
wh $(" "*(25-$bar_f)) -BackgroundColor DarkGray
wh "Capacity" -NoNewline -ForegroundColor White
wh $(" "*(26-("Capacity $fcap mWh").Length)) -NoNewline
wh "$fcap mWh" -ForegroundColor White
wh "Designed" -NoNewline -ForegroundColor White
wh $(" "*(26-("Designed $dcap mWh").Length)) -NoNewline
wh "$dcap mWh" -ForegroundColor White
wh "Health" -NoNewline -ForegroundColor White
wh $(" "*(26-("Health $perc %").Length)) -NoNewline
wh "$perc %" -ForegroundColor $col
wh " "
wh "    EXIT WITH ANY KEY   " -NoNewline -ForegroundColor White
$null=$Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
exit