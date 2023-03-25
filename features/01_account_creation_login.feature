# Project #1 for Testing and Dynamic Analysis (VUTBR FIT) 2022/23
# - Author: Vojtěch Kališ
# - Date of last modification: 25.3.2023

Feature: Account Creation and Login

#------------------------------------------------------------#
#---------- USER REGISTRATION AND SHOPPING HISTORY ----------#
#------------------------------------------------------------#

"""
#scenario #--
    Scenario: Customer gets to Register page
        Given Opencart page is displayed
        When customer clicks on "My Account"
        And customer clicks on "Register" from the revealed dropdown
        Then Register page is displayed
"""

"""
#scenario #--
    Scenario: Customer gets to Login page
        Given Opencart page is displayed
        When customer clicks on "My Account"
        And customer clicks on "Login" from the revealed dropdown
        Then Login page is displayed
"""

#scenario #1
    Scenario: Customer Registers to website
        Given Register page is displayed
        When customer enters account information
        And customer clicks on "Continue"
        And register information is valid
        Then account is created and Account Created page is displayed

#scenario #2
    Scenario: Customer fails to Register to website
        Given Register page is displayed
        When customer enters account information
        And customer clicks on "Continue"
        And register information isn't valid
        Then account isn't created, the form stays open and errors are displayed below fields with wrong inputs

#scenario #3
    Scenario: Customer Logs In to website
        Given Login page is displayed
        When customer enters account information
        And customer clicks on "Login"
        And login information is valid
        Then customer is logged in and My Account page is displayed

#scenario #4
    Scenario: Customer fails to Log In to website
        Given Login page is displayed
        When customer enters account information
        And customer clicks on "Login"
        And login information isn't valid
        Then customer isn't logged in, the form stays open and the "Warning: No match for E-mail address and/or Password." message gets displayed

#scenario #5
    Scenario: Customer Logs Out of website
        Given Opencart page is displayed
        And customer is logged in
        When customer clicks on "My Account"
        And customer clicks on "Logout" from the revealed dropdown
        Then customer is logged out and Logout page is displayed