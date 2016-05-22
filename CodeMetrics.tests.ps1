. ($PSCommandPath -replace '\.tests\.ps1$', '.ps1')

Describe 'Get-Ast' {
    Context 'Running without arguments' {
        It 'runs without errors' {
            { Get-Ast } | Should Not Throw
        }
        
        It 'does something' {
        }
        
        It 'does not return anything' {
            Get-Ast | Should BeNullOrEmpty 
        }
    }
}

Describe 'Measure-CyclomaticComplexity' {
    Context 'Running without arguments' {
        It 'runs without errors' {
            { Measure-CyclomaticComplexity } | Should Not Throw
        }
        
        It 'does something' {
        }
        
        It 'does not return anything'     {
            Measure-CyclomaticComplexity | Should BeNullOrEmpty 
        }
    }
}

Describe 'Measure-CodeLine' {
    Context 'Running without arguments'   {
        It 'runs without errors' {
            { Measure-CodeLine } | Should Not Throw
        }
        
        It 'does something' {
        }
        
        It 'does not return anything'     {
            Measure-CodeLine | Should BeNullOrEmpty 
        }
    }
}

Describe 'Measure-ParameterSet' {
    Context 'Running without arguments'   {
        It 'runs without errors' {
            { Measure-ParameterSet } | Should Not Throw
        }
        
        It 'does something' {
        }
        
        It 'does not return anything'     {
            Measure-ParameterSet | Should BeNullOrEmpty 
        }
    }
}

Describe 'Measure-Script' {
    Context 'Running without arguments' {
        It 'runs without errors' {
            { Measure-Script } | Should Not Throw
        }
        
        It 'does something' {
        }
        
        It 'does not return anything'     {
            Measure-Script | Should BeNullOrEmpty 
        }
    }
}
# describes the function Measure-Function
Describe 'Measure-Function' {
    Context 'Running without arguments'   {
        It 'runs without errors' {
            { Measure-Function } | Should Not Throw
        }
        
        It 'does something' {
        }
        
        It 'does not return anything'     {
            Measure-Function | Should BeNullOrEmpty 
        }
    }
}

Describe 'Measure-Module' {
    Context 'Running without arguments'   {
        It 'runs without errors' {
            { Measure-Module } | Should Not Throw
        }
        
        It 'does something' {
        }
        
        It 'does not return anything'     {
            Measure-Module | Should BeNullOrEmpty 
        }
    }
}
