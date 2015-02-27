@travel-form @p2
Feature: Drupal Create Travel or Development Request
  In order to get approved for travel or development activities
  As a lbs analyst user
  I want create an a travel request

  @lbs
  Scenario: Approve a travel request from a travel request node
    Given I am logged in as a user with "LBS" role
    And I am on 'request/128'
    When I select "Approve"
    And I press "Update workflow"
    Then I should see "Email approval sent to joebob"

  @lbs
  Scenario: Deny a travel request from a travel request node
    Given I am logged in as a user with "LBS" role
    And I am on 'request/128'
    When I select "Deny"
    And I press "Update workflow"
    Then I should see "Email denial sent to joebob"


