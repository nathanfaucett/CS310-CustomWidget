*** Settings ***
Library         SwingLibrary
Library         keywords.CustomWidgetKeywords


*** Keywords ***



*** Test Cases ***
Widget Is Selected Initially
    Start Application       edu.jsu.mcis.Main
    Select Window           Main
    Label Text Should Be    label   SELECTED
    Close Window            Main

Widget Is Selected After Center Click on Octagon
    Start Application       edu.jsu.mcis.Main
    Select Window           Main
    Click Octagon Inside
    Label Text Should Be    label   SELECTED
    Close Window            Main

Widget Is Unchanged After Edge Click
    Start Application       edu.jsu.mcis.Main
    Select Window           Main
    Click Octagon Outside
    Label Text Should Be    label   SELECTED
    Close Window            Main

Widget Toggles With Successive Center Clicks
    Start Application       edu.jsu.mcis.Main
    Select Window           Main
    Click Octagon Inside
    Label Text Should Be    label   SELECTED
    Click Octagon Inside
    Label Text Should Be    label   NOT SELECTED
    Close Window            Main
