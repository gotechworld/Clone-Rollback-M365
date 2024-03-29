# Generated with Microsoft365DSC version 1.23.1115.1
# For additional information on how to use Microsoft365DSC, please visit https://aka.ms/M365DSC
param (
    [parameter()]
    [System.Management.Automation.PSCredential]
    $Credential
)

Configuration AADDemo
{
    param (
        [parameter()]
        [System.Management.Automation.PSCredential]
        $Credential
    )

    if ($null -eq $Credential)
    {
        <# Credentials #>
        $Credscredential = Get-Credential -Message "Credentials"

    }
    else
    {
        $CredsCredential = $Credential
    }

    $OrganizationName = $CredsCredential.UserName.Split('@')[1]

    Import-DscResource -ModuleName 'Microsoft365DSC' -ModuleVersion '1.23.1115.1'

    Node localhost
    {
        AADApplication "AADApplication-Azure-M365-DSC-Recovery"
        {
            AppId                   = "888623cf-141a-4198-b8cd-bf2dac1e3d92";
            AvailableToOtherTenants = $False;
            Credential              = $Credscredential;
            DisplayName             = "Azure-M365-DSC-Recovery";
            Ensure                  = "Present";
            IdentifierUris          = @();
            IsFallbackPublicClient  = $False;
            KnownClientApplications = @();
            ObjectId                = "3de4f48a-2623-4181-be8d-e8a423418c71";
            Owners                  = @("gotechworld@$OrganizationName");
            Permissions             = @(MSFT_AADApplicationPermission {
                Name                = 'User.Read'
                Type                = 'Delegated'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'AdministrativeUnit.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'AdministrativeUnit.ReadWrite.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'AppCatalog.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'AppCatalog.ReadWrite.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'Application.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'Application.ReadWrite.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'AuditLog.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'Device.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'Device.ReadWrite.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'DeviceManagementApps.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'DeviceManagementApps.ReadWrite.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'Directory.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'Directory.ReadWrite.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'EntitlementManagement.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'EntitlementManagement.ReadWrite.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'EventListener.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'EventListener.ReadWrite.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'ExternalConnection.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'ExternalConnection.ReadWrite.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'Files.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'Files.ReadWrite.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'Group.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'Group.ReadWrite.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'IdentityProvider.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'IdentityProvider.ReadWrite.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'Mail.Read'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'Mail.ReadBasic'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'Mail.ReadBasic.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'Mail.ReadWrite'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'Member.Read.Hidden'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'NetworkAccess.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'NetworkAccess.ReadWrite.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'NetworkAccessPolicy.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'NetworkAccessPolicy.ReadWrite.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'Organization.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'Organization.ReadWrite.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'Policy.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'Policy.Read.ConditionalAccess'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'Policy.Read.IdentityProtection'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'PrivilegedAccess.Read.AzureAD'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'PrivilegedAccess.Read.AzureADGroup'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'PrivilegedAccess.ReadWrite.AzureAD'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'PrivilegedAccess.ReadWrite.AzureADGroup'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'PrivilegedAccess.ReadWrite.AzureResources'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'Reports.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'RoleAssignmentSchedule.Read.Directory'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'RoleAssignmentSchedule.ReadWrite.Directory'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'RoleEligibilitySchedule.Read.Directory'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'RoleEligibilitySchedule.ReadWrite.Directory'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'RoleManagement.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'RoleManagementPolicy.Read.AzureADGroup'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'RoleManagementPolicy.Read.Directory'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'RoleManagementPolicy.ReadWrite.AzureADGroup'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'RoleManagementPolicy.ReadWrite.Directory'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'SecurityEvents.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'SecurityEvents.ReadWrite.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'SecurityIncident.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'SecurityIncident.ReadWrite.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'ServiceHealth.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'User.Export.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'User.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'User.ReadWrite.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'UserAuthenticationMethod.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission {
                Name                = 'UserAuthenticationMethod.ReadWrite.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
            );
            PublicClient            = $False;
            ReplyURLs               = @();
        }
        AADGroup "AADGroup-MSFT"
        {
            Credential           = $Credscredential;
            Description          = "MSFT";
            DisplayName          = "MSFT";
            Ensure               = "Present";
            GroupTypes           = @("Unified");
            Id                   = "3755a22a-bdbd-4803-93a6-94052da955de";
            MailEnabled          = $True;
            MailNickname         = "MSFT";
            MemberOf             = @();
            Members              = @("gotechworld@$OrganizationName","PattiF@$OrganizationName","LeeG@$OrganizationName","MiriamG@$OrganizationName","NestorW@$OrganizationName","AdeleV@$OrganizationName","AlexW@$OrganizationName","DiegoS@$OrganizationName","GradyA@$OrganizationName","HenriettaM@$OrganizationName","IsaiahL@$OrganizationName","JohannaL@$OrganizationName","JoniS@$OrganizationName","LidiaH@$OrganizationName","LynneR@$OrganizationName","MeganB@$OrganizationName","PradeepG@$OrganizationName");
            Owners               = @("gotechworld@$OrganizationName");
            SecurityEnabled      = $False;
            Visibility           = "Public";
        }
        AADGroup "AADGroup-Sales and Marketing"
        {
            Credential           = $Credscredential;
            Description          = "Description of Sales and Marketing";
            DisplayName          = "Sales and Marketing";
            Ensure               = "Present";
            GroupTypes           = @("Unified");
            Id                   = "49eee237-60aa-459c-8774-8986a558a942";
            MailEnabled          = $True;
            MailNickname         = "SalesandMarketing";
            MemberOf             = @();
            Members              = @("gotechworld@$OrganizationName","PattiF@$OrganizationName","LeeG@$OrganizationName","MiriamG@$OrganizationName","NestorW@$OrganizationName","AdeleV@$OrganizationName","AlexW@$OrganizationName","DiegoS@$OrganizationName","GradyA@$OrganizationName","HenriettaM@$OrganizationName","IsaiahL@$OrganizationName","JohannaL@$OrganizationName","JoniS@$OrganizationName","LidiaH@$OrganizationName","LynneR@$OrganizationName","MeganB@$OrganizationName","PradeepG@$OrganizationName");
            Owners               = @("gotechworld@$OrganizationName","PattiF@$OrganizationName");
            SecurityEnabled      = $False;
            Visibility           = "Public";
        }
        AADGroup "AADGroup-Retail"
        {
            Credential           = $Credscredential;
            Description          = "Description of Retail";
            DisplayName          = "Retail";
            Ensure               = "Present";
            GroupTypes           = @("Unified");
            Id                   = "5ab23def-b379-4b8a-bec2-f087fdfd2885";
            MailEnabled          = $True;
            MailNickname         = "Retail";
            MemberOf             = @();
            Members              = @("gotechworld@$OrganizationName","PattiF@$OrganizationName","LeeG@$OrganizationName","MiriamG@$OrganizationName","NestorW@$OrganizationName","AdeleV@$OrganizationName","AlexW@$OrganizationName","DiegoS@$OrganizationName","GradyA@$OrganizationName","HenriettaM@$OrganizationName","IsaiahL@$OrganizationName","JohannaL@$OrganizationName","JoniS@$OrganizationName","LidiaH@$OrganizationName","LynneR@$OrganizationName","MeganB@$OrganizationName","PradeepG@$OrganizationName");
            Owners               = @("gotechworld@$OrganizationName","PattiF@$OrganizationName");
            SecurityEnabled      = $False;
            Visibility           = "Public";
        }
        AADGroup "AADGroup-Mark 8 Project Team"
        {
            Credential           = $Credscredential;
            Description          = "Welcome to the team that we've assembled to create the Mark 8.";
            DisplayName          = "Mark 8 Project Team";
            Ensure               = "Present";
            GroupTypes           = @("Unified");
            Id                   = "a4e2615d-b452-4f20-9d6e-86fbf896b166";
            MailEnabled          = $True;
            MailNickname         = "Mark8ProjectTeam";
            MemberOf             = @();
            Members              = @("gotechworld@$OrganizationName","PattiF@$OrganizationName","LeeG@$OrganizationName","MiriamG@$OrganizationName","NestorW@$OrganizationName","AdeleV@$OrganizationName","AlexW@$OrganizationName","DiegoS@$OrganizationName","GradyA@$OrganizationName","HenriettaM@$OrganizationName","IsaiahL@$OrganizationName","JohannaL@$OrganizationName","JoniS@$OrganizationName","LidiaH@$OrganizationName","LynneR@$OrganizationName","MeganB@$OrganizationName","PradeepG@$OrganizationName");
            Owners               = @("gotechworld@$OrganizationName","PattiF@$OrganizationName");
            SecurityEnabled      = $False;
            Visibility           = "Public";
        }
        AADGroup "AADGroup-Sample Team Site"
        {
            Credential           = $Credscredential;
            Description          = "Sample Team Site";
            DisplayName          = "Sample Team Site";
            Ensure               = "Present";
            GroupTypes           = @("Unified");
            Id                   = "b5bcd51c-97a7-4e22-8e21-40632ed1385f";
            MailEnabled          = $True;
            MailNickname         = "SampleTeamSite";
            MemberOf             = @();
            Members              = @("gotechworld@$OrganizationName");
            Owners               = @("gotechworld@$OrganizationName");
            SecurityEnabled      = $False;
            Visibility           = "Public";
        }
        AADGroup "AADGroup-U.S. Sales"
        {
            Credential           = $Credscredential;
            Description          = "Description of U.S. Sales";
            DisplayName          = "U.S. Sales";
            Ensure               = "Present";
            GroupTypes           = @("Unified");
            Id                   = "bd5cc9fc-2fcc-4fa3-97d9-10b5df6526b3";
            MailEnabled          = $True;
            MailNickname         = "U.S.Sales";
            MemberOf             = @();
            Members              = @("gotechworld@$OrganizationName","PattiF@$OrganizationName","LeeG@$OrganizationName","MiriamG@$OrganizationName","NestorW@$OrganizationName","AdeleV@$OrganizationName","AlexW@$OrganizationName","DiegoS@$OrganizationName","GradyA@$OrganizationName","HenriettaM@$OrganizationName","IsaiahL@$OrganizationName","JohannaL@$OrganizationName","JoniS@$OrganizationName","LidiaH@$OrganizationName","LynneR@$OrganizationName","MeganB@$OrganizationName","PradeepG@$OrganizationName");
            Owners               = @("gotechworld@$OrganizationName","PattiF@$OrganizationName");
            SecurityEnabled      = $False;
            Visibility           = "Public";
        }
        AADGroup "AADGroup-Digital Initiative Public Relations"
        {
            Credential           = $Credscredential;
            Description          = "Description of Digital Initiative Public Relations";
            DisplayName          = "Digital Initiative Public Relations";
            Ensure               = "Present";
            GroupTypes           = @("Unified");
            Id                   = "e07764ca-4195-4163-b2a2-7f5adeefe834";
            MailEnabled          = $True;
            MailNickname         = "DigitalInitiativePublicRelations";
            MemberOf             = @();
            Members              = @("gotechworld@$OrganizationName","PattiF@$OrganizationName","LeeG@$OrganizationName","MiriamG@$OrganizationName","NestorW@$OrganizationName","AdeleV@$OrganizationName","AlexW@$OrganizationName","DiegoS@$OrganizationName","GradyA@$OrganizationName","HenriettaM@$OrganizationName","IsaiahL@$OrganizationName","JohannaL@$OrganizationName","JoniS@$OrganizationName","LidiaH@$OrganizationName","LynneR@$OrganizationName","MeganB@$OrganizationName","PradeepG@$OrganizationName");
            Owners               = @("gotechworld@$OrganizationName","PattiF@$OrganizationName");
            SecurityEnabled      = $False;
            Visibility           = "Public";
        }
    }
}

AADDemo -ConfigurationData .\ConfigurationData.psd1 -Credential $Credential
