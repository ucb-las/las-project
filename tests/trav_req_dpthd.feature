@travel-form @p2
Feature: Drupal Create Travel or Development Request
  In order to get approved for travel or development activities
  As a department head user
  I want create an a travel request

  @unit_head
  Scenario: Approve a travel request from a travel request node
    Given I am logged in as a user with "unit head" role
    And I am on 'request/128'
    When I select "AUL/Director review"
    And I press "Update workflow"
    Then I should see "Request sent to AUL/Director for approval"

  @unit_head
  Scenario: Deny a travel request from a travel request node
    Given I am logged in as a user with "unit head" role
    And I am on 'request/128'
    When I select "return to requestor"
    And I press "Update workflow"
    Then I should see "Request returned to requestor"
    Then I should see "Email sent to joebob"
