@travel-form @p2
Feature: Drupal Create Travel or Development Request
  In order to get approved for travel or development activities
  As a aul user
  I want create an a travel request

  @aul_director
  Scenario: Approve a travel request from a travel request node
    Given I am logged in as a user with "AUL/Director" role
    And requestor is "SDC eligible"
    And I am on 'request/128'
    When I select "SDC Chair review"
    And I press "Update workflow"
    Then I should see "Request sent to SDC Chair for approval"

  @aul_director
  Scenario: Deny a travel request from a travel request node
    Given I am logged in as a user with "AUL/Director" role
    And requestor is "SDC eligible"
    And I am on 'request/128'
    When I select "return to requestor"
    And I press "Update workflow"
    Then I should see "Request returned to requestor"
    Then I should see "Email sent to joebob"

  @aul_director
  Scenario: Approve a travel request from a travel request node
    Given I am logged in as a user with "AUL/Director" role
    And requestor is not "SDC eligible"
    And I am on 'request/128'
    When I select "LBS review"
    And I press "Update workflow"
    Then I should see "Request sent to LBS for approval"

  @aul_director
  Scenario: Deny a travel request from a travel request node
    Given I am logged in as a user with "AUL/Director" role
    And requestor is not "SDC eligible"
    And I am on 'request/128'
    When I select "return to requestor"
    And I press "Update workflow"
    Then I should see "Request returned to requestor"
    Then I should see "Email sent to joebob"
