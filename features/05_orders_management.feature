# Project #1 for Testing and Dynamic Analysis (VUTBR FIT) 2022/23
# - Author: Vojtěch Kališ
# - Date of last modification: 25.3.2023

Feature: Orders Management

#-------------------------------------#
#---------- ORDERS HANDLING ----------#
#-------------------------------------#

    Background:
        Given an administrator is logged in

"""
#scenario #--
    Scenario: Administrator views Orders page
        Given Opencart webpage is displayed
        When administrator clicks on "Sales"
        And administrator clicks on "Orders" from the dropdown
        Then Orders page gets displayed
"""
    
#scenario #28
    Scenario: Administrator views Order Information page
        Given Orders page is displayed
        When administrator clicks on "View" by an order
        Then Order Information page gets displayed

#scenario #29
    Scenario: Administrator adds product to an order
        Given Order Information page is displayed
        When administrator clicks on "+"
        And finds <product> using the revealed search bar
        And clicks "Save"
        Then <product> gets added to the <order>
        Examples:
            | order           | product      | new order       |
            | x1 HTC Touch HD | HTC Touch HD | x2 HTC Touch HD |

#scenario #30
    Scenario: Administrator removes product from an order
        Given Order Information page is displayed
        When administrator clicks on "-"
        Then <product> gets removed from the <order>
        Examples:
            | order           | new order |
            | x1 HTC Touch HD |           |

#scenario #31
    Scenario: Administrator updates order status
        Given Order Information page is displayed
        When administrator clicks on "Add History"
        Then a message gets added to the order with updated Status selected by the administrator