New-VMSwitch -SwitchName "vIntranet" -SwitchType Internal

$IFIndex = (get-netadapter -name "AdapterNameHere").IfIndex

New-NetIPAddress -IPAddress 10.10.0.1 -PrefixLength 16 -InterfaceIndex $IFIndex

New-NetNat -Name "bitIntranet" -InternalIPInterfaceAddressPrefix 10.10.0.0/16