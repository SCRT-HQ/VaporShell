function Add-ObjectDetail {
    <#
    .SYNOPSIS
        Decorate an object with
            - A TypeName
            - New properties
            - Default parameters

        ** This is a stripped down version of the function built out by Warren Frame -- http://ramblingcookiemonster.github.io/Decorating-Objects/   |   https://github.com/RamblingCookieMonster/PSStackExchange/blob/master/PSStackExchange/Private/Add-ObjectDetail.ps1

    .DESCRIPTION
        Helper function to decorate an object with
            - A TypeName
            - New properties
            - Default parameters 

    .PARAMETER InputObject
        Object to decorate. Accepts pipeline input.

    .PARAMETER TypeName
        Typenames to insert.
        
        This will show up when you use Get-Member against the resulting object.

    .PARAMETER Passthru
        Whether to pass the resulting object on. Defaults to true

    .NOTES
        This breaks the 'do one thing' rule from certain perspectives...
        The goal is to decorate an object all in one shot
   
        This abstraction simplifies decorating an object, with a slight trade-off in performance. For example:

        10,000 objects, add a property and typename:
            Add-ObjectDetail:                        ~4.6 seconds
            Add-Member + PSObject.TypeNames.Insert:  ~3 seconds

        Initial code borrowed from Shay Levy:
        http://blogs.microsoft.co.il/scriptfanatic/2012/04/13/custom-objects-default-display-in-powershell-30/
        
    .LINK
        http://ramblingcookiemonster.github.io/Decorating-Objects/

    .FUNCTIONALITY
        PowerShell Language
    #>
    [CmdletBinding()] 
    param(
        [Parameter( Mandatory = $true,
            Position = 0,
            ValueFromPipeline = $true )]
        [ValidateNotNullOrEmpty()]
        [psobject[]]$InputObject,

        [Parameter( Mandatory = $true,
            Position = 1)]
        [string[]]$TypeName,

        [boolean]$Passthru = $True
    )
    
    Process {
        foreach ($Object in $InputObject) {
            #Add specified type(s)
            foreach ($T in $TypeName) {
                [void]$Object.PSObject.TypeNames.Insert(0,$T)
            }
            if ($Passthru) {
                $Object
            }
        }
    }
}