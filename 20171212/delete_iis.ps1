#Deleting Sites and app pools in IIS 7 with PowerShell
$appCmd = "C:\windows\system32\inetsrv\appcmd.exe"

$AppSite = & $appcmd list site
#clean Sites
foreach ($site in $AppSite) {
	$site = $site.split('"')[1] #get the name only
	& $appcmd delete site $site
}

$AppPools = & $appcmd list apppool
#clean AppPools
foreach ($pool in $AppPools){

    $pool = $pool.split('"')[1] #get the name only
    & $appcmd delete apppool $pool
}