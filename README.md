# UI Automation Test Suite

This repository contains a suite of UI automation tests created using Robot Framework for automating common web application interactions. The tests cover a simple login scenario, a data-driven approach for validating multiple user credentials, and a complex e-commerce flow for an online store.

## Prerequisites

- Robot Framework
- SeleniumLibrary for Robot Framework
- Python 3.x
- CSV or Excel file for data-driven tests (for Medium Task)
- WebDriver (e.g., ChromeDriver, GeckoDriver) installed for the browser automation

## Task Overview

### ✅ Simple Task: Login Validation

**Test Case TC01:**
- **Step 1**: Open the browser
- **Step 2**: Navigate to the login page (https://www.automationexercise.com/)
- **Step 3**: Enter valid credentials
- **Step 4**: Verify login success message

**Test Case TC02:**
- **Step 1**: Open the browser
- **Step 2**: Navigate to the login page
- **Step 3**: Enter invalid credentials
- **Step 4**: Verify login failure message

### ✅ Medium Task: Data-Driven Test for Login Validation

**Test Case TC03:**
- **Step 1**: Implement a data-driven test using CSV data source
- **Step 2**: Validate login for 3 different users with both valid and invalid credentials
  - The test will run for multiple user credentials from the CSV file, ensuring that the login system works as expected for each scenario.

### ✅ Complex Task: E-commerce Flow Automation

**Test Suite TC04:**
- **Step 1**: Automate login functionality
- **Step 2**: Search for a product
- **Step 3**: Add two products to the cart
- **Step 4**: Continue to payment page and verify checkout options

## Installation

   ```bash
    pip install robotframework
    pip install robotframework-seleniumlibrary
    pip install robotframework-CSVLibrary

