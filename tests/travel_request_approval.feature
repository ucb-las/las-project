@travel-form @p2
Feature: Drupal Create Travel or Development Request
  In order to get approved for travel or development activities
  As a staff user
  I want create an a travel request

  @api @wip @requestor
  Scenario: Create an travel request from the add travel request page
    Given I am logged in as a user with the 'Staff' role
    And I am at 'node/add/travel-form'
    #And I am on 'node/add/travel-form'
    Given I fill in "Activity title" with "Going Rogue"
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




