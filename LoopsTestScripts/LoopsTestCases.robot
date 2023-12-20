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