# Project #1 for Testing and Dynamic Analysis (VUTBR FIT) 2022/23
# - Author: Vojtěch Kališ
# - Date of last modification: 25.3.2023

Feature: Product Management

#----------------------------------------#
#---------- PRODUCT MANAGEMENT ----------#
#----------------------------------------#

    Background:
        Given an administrator is logged in

"""
#scenario #--
    Scenario: Administrator views Products page
        Given Opencart page is displayed
        When administrator clicks on "Catalog"
        And administrator clicks on "Products" from the dropdown
        Then Products page gets displayed
"""
"""
#scenario #--
    Scenario: Administrator views Add P"roduct page
        Given Products page is displayed
        When administrator clicks on "Add New"
        Then Add Product page gets displayed
"""
"""
#scenario #--
    Scenario: Administrator views Categories page
        Given Opencart page is displayed
        When administrator clicks on "Catalog"
        And administrator clicks on "Categories" from the dropdown
        Then Categories page gets displayed
"""
"""
#scenario #--
    Scenario: Administrator views Add Category page
        Given Categories page is displayed
        When administrator clicks on "Add New"
        Then Add Category page gets displayed
"""
#scenario #19
    Scenario: Administrator adds category
        Given Add Category page is displayed
        When administrator enters new category information
        And administrator clicks on "Save"
        And new category information is valid
        Then the form stays open, new category is created and "Success: You have modified categories!" message gets displayed

#scenario #20
    Scenario: Administrator fails to add category
        Given Add Category page is displayed
        When administrator enters new category information
        And administrator clicks on "Save"
        And new category information is invalid
        Then the form stays open and "Warning: Please check the form carefully for errors!" message gets displayed

#scenario #21
    Scenario: Administrator removes category
        Given Categories page is displayed
        When administrator selects a category
        And administrator clicks on "Delete"
        Then the form stays open, category is removed and "Success: You have modified categories!" message gets displayed

#scenario #22
    Scenario: Administrator adds product
        Given Add Product page is displayed
        When administrator enters new product information
        And administrator clicks on "Save"
        And new product information is valid
        Then the form stays open, new product is created and "Success: You have modified products!" message gets displayed

#scenario #23
    Scenario: Administrator fails to add product
        Given Add Product page is displayed
        When administrator enters new product information
        And administrator clicks on "Save"
        And new product information is invalid
        Then the form stays open, new product is created and "Warning: Please check the form carefully for errors!" message gets displayed

#scenario #24
    Scenario: Administrator removes product
        Given Products page is displayed
        When administrator selects a product
        And administrator clicks on "Delete"
        Then the form stays open, product is removed and "Success: You have modified products!" message gets displayed
    
#scenario #25
    Scenario: Administrator views Product Edit page
        Given Products page is displayed
        When administrator clicks on "Edit" by a product
        Then Product Edit page gets displayer

#scenario #26
    Scenario: Administrator edits product information
        Given Product Edit page is displayed
        When administrator edits product information
        And administrator clicks on "Save"
        And product information is valid
        Then product information is updated and "Success: You have modified products!" message gets displayed

#scenario #27
    Scenario: Administrator fails to edit product information
        Given Product Edit page is displayed
        When administrator edits product information
        And administrator clicks on "Save"
        And product information isn't valid
        Then product information isn't updated, the form stays open, errors are displayed below fields with wrong inputs and "Warning: Please check the form carefully for errors!" message gets displayed