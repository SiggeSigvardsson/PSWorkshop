function Add-Member {
    [Cmdletbinding()]
    param (
        [Parameter(Mandatory, Position = 1,ValueFromPipeline = $true)]
        [string]
        $GivenName,

        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true]
        $SurName,

        [Parameter(Position = 2)]
        $BirthYear
    )
    begin {
        Write-Verbose -Message "Go go go"
    }
    
    Process {

        Write-Verbose "Process is running! woooo"
    [PSCustomObject]@{
        GivenName = $GivenName
        SurName = $SurName
        BirthYear = $BirthYear
        }
    }

    end {
            Write-Verbose "No go any mooore"
    }
}

#Add-Member Sigge 1982 Sigvardsson
Add-Member Sigge 1982 Sigvardsson -Verbose

