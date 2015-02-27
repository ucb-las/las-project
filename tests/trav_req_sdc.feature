@travel-form @p2
Feature: Drupal Create Travel or Development Request
  In order to get approved for travel or development activities
  As a sdc chair user
  I want create an a travel request

 @sdc_chair
  Scenario: Approve a travel request from a travel request node
    Given I am logged in as a user with "SDC Chair" role
    And I am on 'request/128'
    When I select "LBS review"
    And I press "Update workflow"
    Then I should see "Request sent to LBS for approval"

  @sdc_chair
  Scenario: Deny a travel request from a travel request node
    Given I am logged in as a user with "SDC Chair" role
    And I am on 'request/128'
    When I select "LBS review"
    And I press "return to requestor"
    Then I should see "Request returned to requestor"
    Then I should see "Email sent to joebob"

