@smoke @bienestar @activity @c1
Feature: Bienestar Activity Services
  In order process a order
  As a developer
  I want to make GET request through REST API

  Scenario: make a get request to get  summary
    Given A transaction GET event with the path /bienestar/summary
    When I receive a response
    Then I get response code 400
 