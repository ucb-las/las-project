@front @api @anon
Feature: Library Human Resources Dept frontpage
  In order to have an overview about LHRD and LHRD Services
  As any user
  I should go to LHRD frontpage

  Background:
    Given I am on the homepage
    And I wait until the page loads

  Scenario: View texts and links in top left content area
    Then I should see the "link" "Contact" in "top bar" area
    And I should see the "text" "Library Human Resources" in "top left content" area
    And I should see the "text" "Library Jobs" in "lhrd left sidebar" area
    #And I should see the "text" "Library Jobs" in "lhrd left sidebar" area
    And I should see the "text" "Job Seekers" in "lhrd middle panel" area

  #  @local
  #  Scenario Outline: Visit the links in frontpage content area
  #    When I follow "<link>"
  #    And I wait until the page loads
  #    Then I should see the heading "<title>"
  #
  #    Examples:
  #    | link                      | title                   |
  #    | Job Seekers               | Job Seekers             |
  #    | Academic                  | Academic                |
  #    | Staff                     | Staff                   |
  #    | Students                  | Studetn Employees       |
