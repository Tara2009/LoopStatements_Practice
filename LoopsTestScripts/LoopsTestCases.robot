*** Settings ***
Resource                  ../LoopsResources/LoopCommo.robot
Library                   QWeb
Library                   QForce
Library                   String
Suite Setup               Setup Browser
Suite Teardown            End suite

*** Test Cases ***
ForLoop Practice example
    [Tags]                ForLoopStatement
    [Documentation]       For Loop Statement practice example
        FOR                   ${i}                        IN RANGE     1      11
            Log               ${i}
            Run Keyword Unless                            ${i}>5              Log    ---------
        END

For Loop Continue if practice example
    [Tags]    ForLoopscontinueif
    [Documentation]    Continue for loopif contion practice example
        FOR        ${i}        IN RANGE    1    11
            Log        Start - ${i}            
            Continue For Loop If           ${i}>5     
            Log        End - ${i}       
        END 

Exit For Loop if practice example
    [Tags]    ExitForLoopIF
    [Documentation]    Exit For Loop if statement. once pass the exit for loop if condition. terminate the condition
        FOR    ${i}    IN RANGE    1    10
            Log     Start - ${i}
           Exit For Loop If    ${i}>3
           Log     End - ${i} 
        END

Pass Execution if practice example
    [Tags]    PassExecutionif
    [Documentation]    If the given condition is pass, test case mark as "Pass" otherwise "Fail"
        ${a}=          Set Variable    10
        Pass Execution If              ${a}>3   Test case pass value is greater than 5
        Fail                        Because a value is not greater than 5