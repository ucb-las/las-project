@travel-form @p2
Feature: Drupal Create Travel or Development Request
  In order to get approved for travel or development activities
  As a supervisor user
  I want create an a travel request

  @tbd @supervisor
  Scenario: Approve a travel request from a travel request node
    Given I am logged in as a user with "supervisor" role
    And I am on 'request/128'
    When I select "unit head review"
    And I press "Update workflow"
    Then I should see "Request sent to unit head for approval"

  @supervisor
  Scenario: Deny a travel request from a travel request node
    Given I am logged in as a user with "supervisor" role
    And I am on 'request/128'
    When I select "return to requestor"
    And I press "Update workflow"
    Then I should see "Request returned to requestor"
    Then I should see "Email sent to joebob"
