Feature: To test employee api GET, POST and DELETE methods


  Background:
    * url empApiBaseUrl

  Scenario: get all employees and then get the first employee by id
    Given path 'employees'
    When method get
    Then status 200

    * def empId = response[0].empId
    * print 'First Employee ID: ',empId

  
  Scenario: create a employee 
    * def employee =
      """
      {
        "empId": "123",
        "name": "Sai Kotha",
        "designation": "Engineer",
        "salary": 10000
      }
      """

    Given url empApiBaseUrl
    And request employee
    When method post
    Then status 200

    * def empId = response.empId
    * print 'created id is: ', empId


  Scenario: Create &  Delete Employee 
    * def employee =
      """
      {
        "empId": "124",
        "name": "Sai Kumar",
        "designation": "Engineer",
        "salary": 20000
      }
      """

    Given url empApiBaseUrl
    And request employee
    When method post
    Then status 200

    * def empId = response.empId
    * print 'created id is: ', empId

    Given path empId
    When method delete
    Then status 200



