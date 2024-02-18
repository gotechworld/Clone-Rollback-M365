
# Cloning and rollbacking Microsoft 365 tenant using Microsoft 365 DSC

This involves extracting the Entra ID configuration from a source tenant and cloning it over to a target tenant. The rollback process reverses the changes made during the cloning. The process will cover Entra ID applications, Entra ID users, groups, and their memberships.

## Extracting tenant configuration for cloning
- Information about users, groups, and their memberships will be extracted from the source tenant.
- Only metadata associated with users will be recreated, not profile pictures.

## Script execution for tenant cloning
- A custom PowerShell script named "_CloneTenant.ps1_" will be used for the cloning process.
- The script extracts configuration from the source tenant and compiles it using target tenant credentials.
- Once compiled, it applies the configuration to the target tenant.
- The cloning script performs two exports: one for all users, and another for groups and app registrations.
- Users are imported first.
- Entra ID applications and groups are imported afterwards, referencing the existing users.

## Dependency management and potential issues
- The current script does not automatically handle dependencies between exported data.
- This can lead to errors if groups are imported before their associated users.

## Executing the script and applying configuration
- The script compiles the configuration using target tenant credentials.
- It then iteratively applies the configuration in stages: _Users_ are restored first; Other configuration (_groups_, _apps_) are applied afterwards.

## Progress and limitations of the cloning process
- User data (excluding pictures) and group/app configurations are successfully cloned.
- Object IDs differ between tenants as they are unique identifiers.

## User profile limitations and identification
- User profile pictures are not transferred during cloning.
- Users can be identified by comparing email addresses across tenants, which reflect different domains.

## Use cases for tenant cloning
- Creating disaster recovery (DR) environments for testing.
- Testing the impact of new features on a separate tenant.
- Provides a safe environment to test code, features, or configurations without impacting production.
- Creates a full-fidelity replica of the source tenant for testing purposes.

## Tenant cloning considerations and limitations
- Object IDs differ between tenants due to their uniqueness.
- While data and configuration are identical, IDs will be different.

# Rollback process
The rollback process for the tenant cloning highlights a script named "_RollbackTenant.ps1_" that reverses the changes made during the cloning.

**Script functionality:** The script reads the two generated configuration files (one for users and one for other configurations).

**Reversal of user creation:** It flips the "ensure" property from "_present_" to "_absent_" for all users. This instructs the Desired State Configuration engine to remove the created users.

**Application to the target tenant:** The modified configuration is applied to the target tenant, essentially deleting the previously created users.

**Benefits of rollback:** This functionality allows restoring the target tenant to its original state before the cloning, making it ideal for demos and testing scenarios.

## Credentials

When using credentials in Microsoft365DSC configurations, storing them in plain text within the MOF file poses a security risk. 

### Summary

* By default, credentials used in Microsoft365DSC configurations are stored in plain text within the MOF file.
* This poses a security risk as anyone with access to the MOF file can view the credentials.
* PowerShell DSC allows using an encryption certificate to encrypt credential information within the MOF file.
* Microsoft365DSC provides a function `Set-M365DSCAgentCertificateConfiguration` to automatically generate an encryption certificate.
* This function also configures the PowerShell DSC engine to use the certificate for encryption.
* The generated certificate is stored as a `.cer` file alongside the configuration files.
* The `ConfigurationData.psd1` file is updated to reference the certificate for encryption during compilation.
* Using the certificate ensures sensitive credential information is encrypted and not stored in plain text within the MOF file.

----

Source tenant: _gotechworld@vj5zf.onmicrosoft.com_

----
Target tenant: _petrugiurca@survivorallstars.onmicrosoft.com_



