param(


)

$Classes = "$PSScriptRoot\Classes.ps1"
 . $Classes
 $Functions = "$PSScript"


Context 'Testing advanced function' {
    BeforeAll{
     #runs each time
    }
    Run tests | Debug tests
    Describe 'Testing' {
        If 'Returns an object with a full name' {
                $Result = Add-Swmember -givenname Simon -Surname Wahlin -Birthyear 1983
                $Result.Fullname | Should -be 'Simon Whalin'
        }
    }
}