@travel-form @p2
Feature: Drupal Create Travel or Development Request
  In order to get approved for travel or development activities
  As a staff user
  I want create an a travel request

  @api @wip @requestor
  Scenario: Create an travel request from the add travel request page
    Given I am logged in as a user with the 'authenticated user' role
    And I am on 'node/add/travel-form'
    When I fill in 'Activity title' with 'Going Rogue'
    And I select "Library professional development" from the suggestion "Activity Type"
    And I fill in "Business purpose" with 'random text'
    And I fill in 'URL of activity' with "http://www.example.com"
    And I fill in 'Date' with '08/31/2013'
    And I fill in 'Date' with '09/07/2013'
    And I fill in 'City' with 'Berkeley'
    And I fill in "Registration fees" with '200'
    And I select "Yes" from the "Directly bill registration fees to UCB"
    And I fill in "Airfare" with '1234.50'
    And I select "Yes" from the "Directly bill airfare to UCB"
    And I fill in "Hotel" with '700'
    And I fill in "Meals and Incidentals" with '350'
    And I press 'Save'
    Then I should see 'has been created'

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
