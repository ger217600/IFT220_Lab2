# brutforce script to make some organizational units

# you need to change "DC=ad,DC=sparky-tech,DC=com" to match your domain and update the ST initials to match or remove them

Write-Host -ForegroundColor yellow "Creating OUs"
New-ADOrganizationalUnit -Name ST_Computers -Path "DC=ad,DC=ggbernal,DC=lan" -Description "GB_Computers"
 New-ADOrganizationalUnit -Name Workstations -Path "OU=GB_Computers,DC=ad,DC=ggbernal,DC=lan"
  New-ADOrganizationalUnit -Name President -Path "OU=Workstations,OU=GB_Computers,DC=ad,DC=ggbernal,DC=lan"
  New-ADOrganizationalUnit -Name Finance -Path "OU=Workstations,OU=GB_Computers,DC=ad,DC=ggbernal,DC=lan"
  New-ADOrganizationalUnit -Name HR -Path "OU=Workstations,OU=GB_Computers,DC=ad,DC=ggbernal,DC=lan"
  New-ADOrganizationalUnit -Name Sales -Path "OU=Workstations,OU=GB_Computers,DC=ad,DC=ggbernal,DC=lan"
  New-ADOrganizationalUnit -Name Legal -Path "OU=Workstations,OU=GB_Computers,DC=ad,DC=ggbernal,DC=lan"
  New-ADOrganizationalUnit -Name IT -Path "OU=Workstations,OU=GB_Computers,DC=ad,DC=ggbernal,DC=lan"
 New-ADOrganizationalUnit -Name Servers -Path "OU=GB_Computers,DC=ad,DC=ggbernal,DC=lan"
  New-ADOrganizationalUnit -Name Hyper-V -Path "OU=Servers,OU=GB_Computers,DC=ad,DC=ggbernal,DC=lan"
  New-ADOrganizationalUnit -Name Exchange -Path "OU=Servers,OU=GB_Computers,DC=ad,DC=ggbernal,DC=lan"
New-ADOrganizationalUnit -Name ST_Groups -Path "DC=ad,DC=ggbernal,DC=lan" -Description "High Level Security Groups"
New-ADOrganizationalUnit -Name ST_Privileged_Accounts -Path "DC=ad,DC=ggbernal,DC=lan" -Description "Privileged Accounts"
New-ADOrganizationalUnit -Name ST_Users -Path "DC=ad,DC=ggbernal,DC=lan" -Description "Non-Privileged Accounts"
Write-Host -ForegroundColor yellow "Done creating OUs"
Write-Host -ForegroundColor yellow ""

Write-Host -ForegroundColor yellow "Creating groups based on department"
New-ADGroup -GroupCategory Security -GroupScope Global -Name President -Path "OU=GB_Groups,DC=ad,DC=ggbernal,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Finance -Path "OU=GB_Groups,DC=ad,DC=ggbernal,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name HR -Path "OU=GB_Groups,DC=ad,DC=ggbernal,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Sales -Path "OU=GB_Groups,DC=ad,DC=ggbernal,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Legal -Path "OU=GB_Groups,DC=ad,DC=ggbernal,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name IT -Path "OU=GB_Groups,DC=ad,DC=ggbernal,DC=lan"
# Create a Leadership group for the President and VPs to access restricted a file share
New-ADGroup -GroupCategory Security -GroupScope Global -Name Leadership -Path "OU=GB_Groups,DC=ad,DC=ggbernal,DC=lan"
Write-Host -ForegroundColor yellow "Done creating groups"
Write-Host -ForegroundColor yellow ""
