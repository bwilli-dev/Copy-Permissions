#language: PowerShell
#Copy ACL(Security Permissions) from one folder to another

$source_path = "path\to\source"
$destination_path = "path\to\destination"


#list all folders from the source path
$source_folders = Get-ChildItem -Path $source_path -Directory

foreach ($i in $source_folders){
    $name = $i.Name
    Get-Acl -Path $source_path\$name | Set-Acl -Path "$destination_path\$name"
}

