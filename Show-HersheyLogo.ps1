Add-Type -AssemblyName System.Drawing
Add-Type -AssemblyName System.Windows.Forms
If((New-Object System.Drawing.Text.InstalledFontCollection).Families -Contains 'Helvetica-ExtraCompressed')
{
    $form = New-Object -TypeName Windows.Forms.Form -Property @{BackColor='#3C1321';Height=356;Width=1276;ShowIcon=$false;}
    $form.Controls.Add((New-Object System.Windows.Forms.label -Property @{Font=[System.Drawing.Font]::new("Helvetica-ExtraCompressed", 272,[System.Drawing.FontStyle]::Regular);Size=[System.Drawing.Size]::new(1260,320);Location=[System.Drawing.Size]::new(0,20);ForeColor='White';BackColor='#3C1321';Text="HERSHEY'S";TextAlign='MiddleCenter';}))
    [void]$form.ShowDialog()
    $form.Dispose()
}
Else { Write-Output "Please install the Helvetica-ExtraCompressed font"}