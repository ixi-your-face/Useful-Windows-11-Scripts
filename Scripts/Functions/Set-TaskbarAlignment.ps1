function Set-TaskbarAlignment() {
    Param(
        [Parameter(Mandatory=$True)]
        [ValidateSet(
            "Center",
            "Left"
        )]
        $Justify
    )

    $RegPath = "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced"

    if($Justify -eq "Left"){
        Set-ItemProperty -Path $RegPath -Name TaskbarAl -Value 0
    } elseif ($Justify -eq "Center") {
        Set-ItemProperty -Path $RegPath -Name TaskbarAl -Value 1
    }
}
