@smoke
Feature: Bienestar login Services
  In order process a order
  As a developer
  I want to make GET request through REST API

  Scenario: make a get bad request to get activity
    Given A transaction GET event with the path /bienestar/activity
    When I receive a response
    Then I get response code 400
 