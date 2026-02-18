# 0. Permisos (Vital si te sale error rojo)
Set-ExecutionPolicy RemoteSigned -Scope Process

# 1. Seguridad: Mover al escritorio
cd $HOME\Desktop

# 2. Técnica del Sándwich (Agrupar datos)
$(
    "--- CPU ---" 
    Get-CimInstance Win32_Processor | Select-Object Name, NumberOfCores

    "--- RAM ---"
    Get-CimInstance Win32_PhysicalMemory | Select-Object Capacity, Speed

    "--- DISCO ---"
    Get-PhysicalDisk | Select-Object FriendlyName, MediaType, Size

) | Out-File "INFORME_JEFE.txt"

# 3. Resultado (¡PON .EXE PARA QUE NO SALGA EL RARO!)
notepad.exe INFORME_JEFE.txt