@forms @p1 @api
Feature: Forms section
  In order to get a list of Forms
  As any user
  I should go to Forms section

  Scenario: Browse to the Forms page
    Given I am an anonymous user
    Given I am on the homepage
    When I follow "Forms"
    Then I should see the heading "Forms"
    And I should see the following <links>
    | links                      |
    | Staff Job Requisition                 |
    | Student Job Requisition             |


  Scenario: Assert anonymous user must login to create Student Requisition
    Given I am an anonymous user
    Given I am on 'forms/'
    When I follow 'Student Job Requisition'
    Then I should see 'you must be library stafff to submit a student requisition'
    And I should see 'login via Calnet'
