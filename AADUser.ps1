# Generated with Microsoft365DSC version 1.23.1115.1
# For additional information on how to use Microsoft365DSC, please visit https://aka.ms/M365DSC
param (
    [parameter()]
    [System.Management.Automation.PSCredential]
    $Credential
)

Configuration AADUser
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
        AADUser "AADUser-Adele Vance"
        {
            City                 = "Bellevue";
            Country              = "United States";
            Credential           = $Credscredential;
            Department           = "Retail";
            DisplayName          = "Adele Vance";
            Ensure               = "Present";
            FirstName            = "Adele";
            LastName             = "Vance";
            LicenseAssignment    = @("DEVELOPERPACK_E5");
            Office               = "18/2111";
            Password             = New-Object System.Management.Automation.PSCredential('Password', (ConvertTo-SecureString 'Pass@word!11' -AsPlainText -Force));;
            PasswordNeverExpires = $False;
            PostalCode           = "98004";
            PreferredLanguage    = "en-US";
            Roles                = @();
            State                = "WA";
            StreetAddress        = "205 108th Ave. NE, Suite 400";
            Title                = "Retail Manager";
            UsageLocation        = "US";
            UserPrincipalName    = "AdeleV@$OrganizationName";
            UserType             = "Member";
        }
        AADUser "AADUser-Alex Wilber"
        {
            City                 = "San Diego";
            Country              = "United States";
            Credential           = $Credscredential;
            Department           = "Marketing";
            DisplayName          = "Alex Wilber";
            Ensure               = "Present";
            FirstName            = "Alex";
            LastName             = "Wilber";
            LicenseAssignment    = @("DEVELOPERPACK_E5");
            Office               = "131/1104";
            Password             = New-Object System.Management.Automation.PSCredential('Password', (ConvertTo-SecureString 'Pass@word!11' -AsPlainText -Force));;
            PasswordNeverExpires = $False;
            PostalCode           = "92121";
            PreferredLanguage    = "en-US";
            Roles                = @();
            State                = "CA";
            StreetAddress        = "9256 Towne Center Dr., Suite 400";
            Title                = "Marketing Assistant";
            UsageLocation        = "US";
            UserPrincipalName    = "AlexW@$OrganizationName";
            UserType             = "Member";
        }
        AADUser "AADUser-Diego Siciliani"
        {
            City                 = "Birmingham";
            Country              = "United States";
            Credential           = $Credscredential;
            Department           = "HR";
            DisplayName          = "Diego Siciliani";
            Ensure               = "Present";
            FirstName            = "Diego";
            LastName             = "Siciliani";
            LicenseAssignment    = @("DEVELOPERPACK_E5");
            Office               = "14/1108";
            Password             = New-Object System.Management.Automation.PSCredential('Password', (ConvertTo-SecureString 'Pass@word!11' -AsPlainText -Force));;
            PasswordNeverExpires = $False;
            PostalCode           = "35243";
            PreferredLanguage    = "en-US";
            Roles                = @();
            State                = "AL";
            StreetAddress        = "3535 Gradview Parkway Suite 335";
            Title                = "HR Manager";
            UsageLocation        = "US";
            UserPrincipalName    = "DiegoS@$OrganizationName";
            UserType             = "Member";
        }
        AADUser "AADUser-Petru Lucian"
        {
            Credential           = $Credscredential;
            DisplayName          = "Petru Lucian";
            Ensure               = "Present";
            FirstName            = "Petru";
            LastName             = "Lucian";
            LicenseAssignment    = @("DEVELOPERPACK_E5");
            Password             = New-Object System.Management.Automation.PSCredential('Password', (ConvertTo-SecureString 'Pass@word!11' -AsPlainText -Force));;
            PasswordNeverExpires = $False;
            PreferredLanguage    = "en";
            Roles                = @("Global Administrator");
            UsageLocation        = "IE";
            UserPrincipalName    = "gotechworld@$OrganizationName";
            UserType             = "Member";
        }
        AADUser "AADUser-Grady Archie"
        {
            City                 = "Bloomington";
            Country              = "United States";
            Credential           = $Credscredential;
            Department           = "R&D";
            DisplayName          = "Grady Archie";
            Ensure               = "Present";
            FirstName            = "Grady";
            LastName             = "Archie";
            LicenseAssignment    = @("DEVELOPERPACK_E5");
            Office               = "19/2109";
            Password             = New-Object System.Management.Automation.PSCredential('Password', (ConvertTo-SecureString 'Pass@word!11' -AsPlainText -Force));;
            PasswordNeverExpires = $False;
            PostalCode           = "61704";
            PreferredLanguage    = "en-US";
            Roles                = @();
            State                = "IL";
            StreetAddress        = "2203 E. Empire St., Suite J";
            Title                = "Designer";
            UsageLocation        = "US";
            UserPrincipalName    = "GradyA@$OrganizationName";
            UserType             = "Member";
        }
        AADUser "AADUser-Henrietta Mueller"
        {
            City                 = "Fort Lauderdale";
            Country              = "United States";
            Credential           = $Credscredential;
            Department           = "R&D";
            DisplayName          = "Henrietta Mueller";
            Ensure               = "Present";
            FirstName            = "Henrietta";
            LastName             = "Mueller";
            LicenseAssignment    = @("DEVELOPERPACK_E5");
            Office               = "18/1106";
            Password             = New-Object System.Management.Automation.PSCredential('Password', (ConvertTo-SecureString 'Pass@word!11' -AsPlainText -Force));;
            PasswordNeverExpires = $False;
            PostalCode           = "33309";
            PreferredLanguage    = "en-US";
            Roles                = @();
            State                = "FL";
            StreetAddress        = "6750 North Andrews Ave., Suite 400";
            Title                = "Developer";
            UsageLocation        = "US";
            UserPrincipalName    = "HenriettaM@$OrganizationName";
            UserType             = "Member";
        }
        AADUser "AADUser-Isaiah Langer"
        {
            City                 = "Tulsa";
            Country              = "United States";
            Credential           = $Credscredential;
            Department           = "Sales";
            DisplayName          = "Isaiah Langer";
            Ensure               = "Present";
            FirstName            = "Isaiah";
            LastName             = "Langer";
            LicenseAssignment    = @("DEVELOPERPACK_E5");
            Office               = "20/1101";
            Password             = New-Object System.Management.Automation.PSCredential('Password', (ConvertTo-SecureString 'Pass@word!11' -AsPlainText -Force));;
            PasswordNeverExpires = $False;
            PostalCode           = "74133";
            PreferredLanguage    = "en-US";
            Roles                = @();
            State                = "OK";
            StreetAddress        = "7633 E. 63rd Place, Suite 300";
            Title                = "Sales Rep";
            UsageLocation        = "US";
            UserPrincipalName    = "IsaiahL@$OrganizationName";
            UserType             = "Member";
        }
        AADUser "AADUser-Johanna Lorenz"
        {
            City                 = "Louisville";
            Country              = "United States";
            Credential           = $Credscredential;
            Department           = "Engineering";
            DisplayName          = "Johanna Lorenz";
            Ensure               = "Present";
            FirstName            = "Johanna";
            LastName             = "Lorenz";
            LicenseAssignment    = @("DEVELOPERPACK_E5");
            Office               = "23/2102";
            Password             = New-Object System.Management.Automation.PSCredential('Password', (ConvertTo-SecureString 'Pass@word!11' -AsPlainText -Force));;
            PasswordNeverExpires = $False;
            PostalCode           = "40223";
            PreferredLanguage    = "en-US";
            Roles                = @();
            State                = "KY";
            StreetAddress        = "9900 Corporate Campus Dr., Suite 3000";
            Title                = "Senior Engineer";
            UsageLocation        = "US";
            UserPrincipalName    = "JohannaL@$OrganizationName";
            UserType             = "Member";
        }
        AADUser "AADUser-Joni Sherman"
        {
            City                 = "Charlotte";
            Country              = "United States";
            Credential           = $Credscredential;
            Department           = "Legal";
            DisplayName          = "Joni Sherman";
            Ensure               = "Present";
            FirstName            = "Joni";
            LastName             = "Sherman";
            LicenseAssignment    = @("DEVELOPERPACK_E5");
            Office               = "20/1109";
            Password             = New-Object System.Management.Automation.PSCredential('Password', (ConvertTo-SecureString 'Pass@word!11' -AsPlainText -Force));;
            PasswordNeverExpires = $False;
            PostalCode           = "28273";
            PreferredLanguage    = "en-US";
            Roles                = @();
            State                = "NC";
            StreetAddress        = "8055 Microsoft Way";
            Title                = "Paralegal";
            UsageLocation        = "US";
            UserPrincipalName    = "JoniS@$OrganizationName";
            UserType             = "Member";
        }
        AADUser "AADUser-Lee Gu"
        {
            City                 = "Overland Park";
            Country              = "United States";
            Credential           = $Credscredential;
            Department           = "Manufacturing";
            DisplayName          = "Lee Gu";
            Ensure               = "Present";
            FirstName            = "Lee";
            LastName             = "Gu";
            LicenseAssignment    = @("DEVELOPERPACK_E5");
            Office               = "23/3101";
            Password             = New-Object System.Management.Automation.PSCredential('Password', (ConvertTo-SecureString 'Pass@word!11' -AsPlainText -Force));;
            PasswordNeverExpires = $False;
            PostalCode           = "66210";
            PreferredLanguage    = "en-US";
            Roles                = @();
            State                = "KS";
            StreetAddress        = "10801 Mastin Blvd., Suite 620";
            Title                = "Director";
            UsageLocation        = "US";
            UserPrincipalName    = "LeeG@$OrganizationName";
            UserType             = "Member";
        }
        AADUser "AADUser-Lidia Holloway"
        {
            City                 = "Tulsa";
            Country              = "United States";
            Credential           = $Credscredential;
            Department           = "Engineering";
            DisplayName          = "Lidia Holloway";
            Ensure               = "Present";
            FirstName            = "Lidia";
            LastName             = "Holloway";
            LicenseAssignment    = @("DEVELOPERPACK_E5");
            Office               = "20/2107";
            Password             = New-Object System.Management.Automation.PSCredential('Password', (ConvertTo-SecureString 'Pass@word!11' -AsPlainText -Force));;
            PasswordNeverExpires = $False;
            PostalCode           = "74133";
            PreferredLanguage    = "en-US";
            Roles                = @();
            State                = "OK";
            StreetAddress        = "7633 E. 63rd Place, Suite 300";
            Title                = "Product Manager";
            UsageLocation        = "US";
            UserPrincipalName    = "LidiaH@$OrganizationName";
            UserType             = "Member";
        }
        AADUser "AADUser-Lynne Robbins"
        {
            City                 = "Tulsa";
            Country              = "United States";
            Credential           = $Credscredential;
            Department           = "Retail";
            DisplayName          = "Lynne Robbins";
            Ensure               = "Present";
            FirstName            = "Lynne";
            LastName             = "Robbins";
            LicenseAssignment    = @("DEVELOPERPACK_E5");
            Office               = "20/1104";
            Password             = New-Object System.Management.Automation.PSCredential('Password', (ConvertTo-SecureString 'Pass@word!11' -AsPlainText -Force));;
            PasswordNeverExpires = $False;
            PostalCode           = "74133";
            PreferredLanguage    = "en-US";
            Roles                = @();
            State                = "OK";
            StreetAddress        = "7633 E. 63rd Place, Suite 300";
            Title                = "Planner";
            UsageLocation        = "US";
            UserPrincipalName    = "LynneR@$OrganizationName";
            UserType             = "Member";
        }
        AADUser "AADUser-Megan Bowen"
        {
            City                 = "Pittsburgh";
            Country              = "United States";
            Credential           = $Credscredential;
            Department           = "Marketing";
            DisplayName          = "Megan Bowen";
            Ensure               = "Present";
            FirstName            = "Megan";
            LastName             = "Bowen";
            LicenseAssignment    = @("DEVELOPERPACK_E5");
            Office               = "12/1110";
            Password             = New-Object System.Management.Automation.PSCredential('Password', (ConvertTo-SecureString 'Pass@word!11' -AsPlainText -Force));;
            PasswordNeverExpires = $False;
            PostalCode           = "15212";
            PreferredLanguage    = "en-US";
            Roles                = @();
            State                = "PA";
            StreetAddress        = "30 Isabella St., Second Floor";
            Title                = "Marketing Manager";
            UsageLocation        = "US";
            UserPrincipalName    = "MeganB@$OrganizationName";
            UserType             = "Member";
        }
        AADUser "AADUser-Miriam Graham"
        {
            City                 = "San Diego";
            Country              = "United States";
            Credential           = $Credscredential;
            Department           = "Sales & Marketing";
            DisplayName          = "Miriam Graham";
            Ensure               = "Present";
            FirstName            = "Miriam";
            LastName             = "Graham";
            LicenseAssignment    = @("DEVELOPERPACK_E5");
            Office               = "131/2103";
            Password             = New-Object System.Management.Automation.PSCredential('Password', (ConvertTo-SecureString 'Pass@word!11' -AsPlainText -Force));;
            PasswordNeverExpires = $False;
            PostalCode           = "92121";
            PreferredLanguage    = "en-US";
            Roles                = @();
            State                = "CA";
            StreetAddress        = "9255 Towne Center Dr., Suite 400";
            Title                = "Director";
            UsageLocation        = "US";
            UserPrincipalName    = "MiriamG@$OrganizationName";
            UserType             = "Member";
        }
        AADUser "AADUser-Nestor Wilke"
        {
            City                 = "Seattle";
            Country              = "United States";
            Credential           = $Credscredential;
            Department           = "Operations";
            DisplayName          = "Nestor Wilke";
            Ensure               = "Present";
            FirstName            = "Nestor";
            LastName             = "Wilke";
            LicenseAssignment    = @("DEVELOPERPACK_E5");
            Office               = "36/2121";
            Password             = New-Object System.Management.Automation.PSCredential('Password', (ConvertTo-SecureString 'Pass@word!11' -AsPlainText -Force));;
            PasswordNeverExpires = $False;
            PostalCode           = "98109";
            PreferredLanguage    = "en-US";
            Roles                = @();
            State                = "WA";
            StreetAddress        = "320 Westlake Ave N. Thomas St.";
            Title                = "Director";
            UsageLocation        = "US";
            UserPrincipalName    = "NestorW@$OrganizationName";
            UserType             = "Member";
        }
        AADUser "AADUser-Patti Fernandez"
        {
            City                 = "Louisville";
            Country              = "United States";
            Credential           = $Credscredential;
            Department           = "Executive Management";
            DisplayName          = "Patti Fernandez";
            Ensure               = "Present";
            FirstName            = "Patti";
            LastName             = "Fernandez";
            LicenseAssignment    = @("DEVELOPERPACK_E5");
            Office               = "15/1102";
            Password             = New-Object System.Management.Automation.PSCredential('Password', (ConvertTo-SecureString 'Pass@word!11' -AsPlainText -Force));;
            PasswordNeverExpires = $False;
            PostalCode           = "40223";
            PreferredLanguage    = "en-US";
            Roles                = @();
            State                = "KY";
            StreetAddress        = "9900 Corporate Campus Dr., Suite 3000";
            Title                = "President";
            UsageLocation        = "US";
            UserPrincipalName    = "PattiF@$OrganizationName";
            UserType             = "Member";
        }
        AADUser "AADUser-Pradeep Gupta"
        {
            City                 = "Cairo";
            Country              = "Egypt";
            Credential           = $Credscredential;
            Department           = "Finance";
            DisplayName          = "Pradeep Gupta";
            Ensure               = "Present";
            FirstName            = "Pradeep";
            LastName             = "Gupta";
            LicenseAssignment    = @("DEVELOPERPACK_E5");
            Office               = "98/2202";
            Password             = New-Object System.Management.Automation.PSCredential('Password', (ConvertTo-SecureString 'Pass@word!11' -AsPlainText -Force));;
            PasswordNeverExpires = $False;
            PreferredLanguage    = "en-US";
            Roles                = @();
            StreetAddress        = "Smart Village, Kilo 28, Cairo/Alex Desert Road";
            Title                = "Accountant";
            UsageLocation        = "US";
            UserPrincipalName    = "PradeepG@$OrganizationName";
            UserType             = "Member";
        }
    }
}

AADUser -ConfigurationData .\ConfigurationData.psd1 -Credential $Credential
