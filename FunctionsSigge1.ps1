Filter Select-Running {
    param(
        $Status
    )
    # ($_.Status -eq 'running') {
        if ($_.Status -eq $Status) {
        Write-Output -InputObject $_ 
    }
}


function ConvertTo-FullName ($GivenName, $SurName) {
        
}