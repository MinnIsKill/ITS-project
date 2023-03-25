# Project #1 for Testing and Dynamic Analysis (VUTBR FIT) 2022/23
# - Author: Vojtěch Kališ
# - Date of last modification: 25.3.2023

Feature: Shopping History

#-------------------------------------------------------#
#---------- SHOPPING HISTORY & PRODUCT RETURN ----------#
#-------------------------------------------------------#

"""
#scenario #--
    Scenario: Customer views their Shopping History
        Given Opencart page is displayed
        And customer is logged in
        When customer clicks on "My Account"
        And customer clicks on "Order History" from the revealed dropdown
        Then Order History page is displayed
"""

#scenario #14
    Scenario: Customer views order information
        Given Order History page is displayed
        When customer clicks on "View" by an order
        Then Order Information page is displayed

#scenario #15
    Scenario: Customer views Product Return page
        Given Order Information page is displayed
        When customer clicks on "Return" by order price
        Then Product Return page gets displayed

#scenario #16
    Scenario: Customer reorders bought item
        Given Order Information page is displayed
        When customer clicks on "Reorder" by order price
        Then products gets added to Shopping Cart

#scenario #17
    Scenario: Customer files a return of a bought item
        Given Product Return page is displayed
        When customer enters return information
        And customer clicks on "Submit" button
        And input information is valid
        Then Product Return Confirmation page gets displayed

#scenario #18
    Scenario: Customer fails to file a return of a bought item
        Given Product Return page is displayed
        When customer enters return information
        And customer clicks on "Submit" button
        And input information isn't valid
        Then the form stays open and errors are displayed below fields with wrong inputs