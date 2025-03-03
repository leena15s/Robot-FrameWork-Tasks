*** Settings ***
Library  SeleniumLibrary
Resource    Configs/keywords.robot
Library    SeleniumLibrary
Resource    Configs/keywords.robot
Library    CSVLibrary
Library    SeleniumLibrary
Resource    Configs/keywords.robot
Resource    Pages/LoginPage.robot
Resource    Pages/HomePage.robot
Library  SeleniumLibrary
Resource    Pages/HomePage.robot
Resource    Pages/LoginPage.robot
Library     CSVLibrary
Resource    Pages/ProductPage.robot

*** Test Cases ***
