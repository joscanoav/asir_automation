# 1. Seguridad: Mover al escritorio
cd $HOME\Desktop

# 2. Técnica del Sándwich (Agrupar datos)
$(
    "--- CPU ---" 
    # Out-String convierte el objeto técnico en texto legible
    Get-CimInstance Win32_Processor | Select-Object Name, NumberOfCores | Out-String

    "--- RAM ---"
    Get-CimInstance Win32_PhysicalMemory | Select-Object Capacity, Speed | Out-String

    "--- DISCO ---"
    Get-PhysicalDisk | Select-Object FriendlyName, MediaType, Size | Out-String

) | Out-File "INFORME_JEFE.txt"

# 3. Resultado
notepad.exe INFORME_JEFE.txt