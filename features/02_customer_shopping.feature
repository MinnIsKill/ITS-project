# Project #1 for Testing and Dynamic Analysis (VUTBR FIT) 2022/23
# - Author: Vojtěch Kališ
# - Date of last modification: 25.3.2023

Feature: Customer Shopping

#-----------------------------------------------------------#
#---------- PRODUCT SEARCHING AND ORDER PLACEMENT ----------#
#-----------------------------------------------------------#

    Background:
        Given a customer is logged in

#STEP #1
#customer is searching for a product to buy
#===========================================================

#scenario #6
    Scenario: Customer uses the Search bar
        Given Opencart webpage is displayed
        When customer writes <string> into search bar
        And customer confirms search
        Then customer sees a Search page with a list of <products> corresponding to searched <string>
        Examples:
            | string  | products |
            | iphone  | iPhone   |
            | windows |          |

#scenario #7
    Scenario: Customer uses the Navigation bar
        Given Opencart webpage is displayed
        When customer clicks on <category> from Navigation bar
        Then customer sees a Catalog page of <products> from <category>
        Examples:
            | category | products                 |
            | Mac      | iMac                     |
            | Cameras  | Canon EOS 5D, Nikon D300 |
            | Software |                          |


#STEP #2
#customer inspects product and adds it into cart
#===========================================================

"""
#scenario #--
    Scenario: Customer views product
        Given an existing product is shown
        When customer clicks on product
        Then the product's Product Description page is shown
"""

#scenario #8
    Scenario: Customer adds product into Shopping Cart
        Given a Product Description page is shown
        When customer clicks on "Add to Cart"
        Then product gets added to Shopping Cart and a message saying "Success: You have added <product> to your shopping cart!" is displayed


#STEP #3
#customer handles products in Shopping Cart
#===========================================================

"""
#scenario #--
    Scenario: Customer views/opens Shopping Cart
        Given Opencart page is displayed
        When customer clicks on "View Cart" from the dropdown revealed after clicking on the black Cart button in the upper-right corner, or the "Shopping Cart" option above
        Then Shopping Cart page is displayed
"""

#scenario #9
    Scenario: Customer removes product from Shopping Cart
        Given Shopping Cart page is displayed
        And Shopping Cart isn't empty
        When Customer clicks on "Remove" button in the product's Quantity column
        Then product gets removed from Shopping Cart

#scenario #10
    Scenario: Customer continues to Checkout
        Given Shopping Cart page is displayed
        And Shopping Cart isn't empty
        When Customer clicks on Checkout
        Then Checkout page is displayed


#STEP #4
#customer finalizes Order
#===========================================================

#scenario #11
    Scenario: Customer inputs order information wrong
        Given Checkout page is displayed
        And customer doesn't have a Shipping Address saved
        And new Shipping Address information isn't valid
        When customer clicks on "Continue"
        Then new Shipping Address isn't saved, the form stays open and errors are displayed below fields with wrong inputs

#scenario #12
    Scenario: Customer inputs order information
        Given Checkout page is displayed
        And customer doesn't have a Shipping Address saved
        And new Shipping Address information is valid
        When customer clicks on "Continue"
        Then new Shipping Address is saved and immediately set to be used

#scenario #13
    Scenario: Customer finishes Checkout and confirms order
        Given Checkout page is displayed
        And customer has a Shipping Address set
        When customer clicks on "Confirm Order"
        Then Order Placed page is displayed
        