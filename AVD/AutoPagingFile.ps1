# Désactiver la gestion manuelle du pagefile et activer la gestion automatique par Windows
Try {
    $ComputerSystem = Get-WmiObject -Class Win32_ComputerSystem -EnableAllPrivileges
    $ComputerSystem.AutomaticManagedPagefile = $true
    $ComputerSystem.Put()

    Write-Host "La gestion automatique du fichier d'échange a été activée avec succès."
} Catch {
    Write-Host "Erreur : $_"
}

# Redémarrer pour appliquer les changements
Write-Host "Un redémarrage est nécessaire pour appliquer les modifications."
