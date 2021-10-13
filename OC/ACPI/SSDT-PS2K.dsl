// Remap PrntScr to disable touchpad
// Supported Voodoo PrntScr Key combinations:
// PrntScr            Enable/Disable touchpad
// Windows+PrntScr    Enable/Disable touchpad+keyboard
// Ctrl+Alt+PrntScr   Reset and enable touchpad
// Shift+PrntScr      Send SysRq scancode to the kernel
// Reference: https://github.com/acidanthera/VoodooPS2/blob/master/Docs/ACPI/SSDT-PrtSc-Remap.dsl

DefinitionBlock ("", "SSDT", 2, "ACDT", "ps2", 0)
{
    External (_SB_.PCI0.LPCB.PS2K, DeviceObj)
    
    Name(_SB.PCI0.LPCB.PS2K.RMCF, Package()
    {
        "Keyboard", Package()
        {
            "RemapPrntScr", ">y",
        },
    })
}
//EOF