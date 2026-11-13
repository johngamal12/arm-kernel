*** Settings ***
Suite Setup       Setup
Suite Teardown    Teardown
Test Setup        Reset Emulation
Resource          ${RENODE_KEYWORDS}

*** Test Cases ***
Phase 0 Clock Probe
    Execute Script    ${CURDIR}/stm32h747_amp.resc
    Execute Command   emulation RunFor "0.1"
    ${ticks}=         Execute Command    sysbus ReadDoubleWord 0x20000038
    Should Be Equal   ${ticks}    0x000003E7
