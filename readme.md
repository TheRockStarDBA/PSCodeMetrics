[CC.net]: http://www.codeproject.com/Articles/11719/Cyclomatic-Code-Complexity-Analysis-for-Microsoft
[VV]: https://blog.victorvogelpoel.nl/2014/01/12/powershell-measure-scriptcode-calculating-script-code-metrics/

# PSCodeMetrics
PSCodeMetrics is a PowerShell module to help you gain insight into the complexity and maintainability of your code.

## How it works
PSCodeMetrics measures the maintainability of your PowerShell code using data like cyclomatic complexity, number of lines of code, and number of parameter sets for functions and scripts.

To measure your script, just run the Measure-Script command and point it to the path of the script you'd like to measure:

```PowerShell
PS c:\> Measure-Script -Path .\TestScript.ps1

Script             CyclomaticComplexity LinesOfCode ParameterSets
------             -------------------- ----------- -------------
TestScript.ps1                        8           65             2
```

To measure a function, you can use the Measure-Function command, and pass either the path to a file that contains the function, or just a function name:

```PowerShell
Measure-Function -Command Test-Function

Function          CyclomaticComplexity LinesOfCode ParameterSets
--------          -------------------- ----------- -------------
Test-Function                        3          29             1
```

## Future goals
This is a very early draft of a module, and needs a ton of work to be really useful! I have lots of ideas for it, but would love to get input from the community, especially discussion about how best to evaluate code maintainability. 

Current functionality allows gathering basic maintainability information for scripts and functions. Returning information about an entire module is partially working.

Eventually I'd like to include an overall grading system that will indicate a script's score on a maintainability index, but this is a very subjective topic and I'd like to get some agreement from the community on how to implement this.

Other goals may be things like custom object types and custom formats for optimizing output.

## Contributing
If you'd like to contribute to this project you can do so in 3 ways:

1. Contribute to the code - add features, fix bugs, and help me document the use of the module as it grows
2. Let me know of any issues you find - these will be numerous ;)
3. Contribute ideas - code maintainability can be a subjective topic, so I'd love to get others' input to make this module as useful as possible to the community.

## Cyclomatic complexity
If you're not familiar with this term, it's a quantification of the complexity of code and represents the number of independent paths that may be travelled through a segment of code. Any basic procedural code begins with a cyclomatic complexity of 1 and increases by 1 with each decision that must be made during execution.

Measuring cyclomatic complexity varies by programming language due to differences in how decision structures can be written, and there is no strict definition of it specifically for PowerShell. For reference I used the definition found [here][CC.net] as a basis for the formula used to calculate this.

## Credits
* Much of the method I use to count lines of code was borrowed from [Victor Vogelpoel's blog][VV].

* [Cyclomatic Code Complexity Analysis for Microsoft][CC.net]