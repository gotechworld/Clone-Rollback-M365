@{
    AllNodes = @(
        @{
            NodeName                    = "localhost"
            PSDscAllowPlainTextPassword = $true;
            PSDscAllowDomainUser        = $true;
            #region Parameters
            # Path of the certificate used to encrypt credentials in the file.
            CertificateFile = "M365DSC.cer"

            # Default Value Used to Ensure a Configuration Data File is Generated
            ServerNumber = "0"

        }
    )
    NonNodeData = @(
    )
}
