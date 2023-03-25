# Project #1 for Testing and Dynamic Analysis (VUTBR FIT) 2022/23
# - Author: Vojtěch Kališ
# - Date of last modification: 25.3.2023

Feature: User Information Management

#-----------------------------------------------#
#---------- USER INFORMATION HANDLING ----------#
#-----------------------------------------------#

    Background:
        Given an administrator is logged in

"""
#scenario #--
    Scenario: Administrator views Customers page
        Given Opencart webpage is displayed
        When administrator clicks on "Customers"
        And administrator clicks on "Customers" from the dropdown
        Then Customers page gets displayed
"""
    
#scenario #32
    Scenario: Administrator views Customer Edit page
        Given Customers page is displayed
        When administrator clicks on "Edit" by a customer
        Then Customer Edit page gets displayer

#scenario #33
    Scenario: Administrator edits customer information
        Given Customer Edit page is displayed
        When administrator edits user information
        And administrator clicks on "Save"
        And user information is valid
        Then account information is updated and "Success: You have modified customers!" message gets displayed

#scenario #34
    Scenario: Administrator fails to edit customer information
        Given Customer Edit page is displayed
        When administrator edits user information
        And administrator clicks on "Save"
        And user information isn't valid
        Then account information isn't updated, the form stays open, errors are displayed below fields with wrong inputs and "Warning: Please check the form carefully for errors!" message gets displayed