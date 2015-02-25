@front @content
Feature: View home page header
  In order to have access to different sections of LHRD
  As any user
  I need to be able to view navigation links and site search field

  @anon
  Scenario Outline: View header navigation links in header area
    Given I am on "<page>"
    And I should see the following <links> in "top bar" area
    | links             |
    | Contact           |
    | Forms             |
    | Policies          |
    | Services          |

    Examples:
    | page            |
    | /               |
    | /job-seekers    |
    | /academic       |
    | /staff          |
    | /student        |


  @api
  Scenario Outline: View bottom header tabs as authenticated user
    Given I am logged in as a user with the "Staff" role
    And I am on "<page>"
    Then I should see the following <links> in "top bar" area
      | links                    |
      | Logout                   |
      | Dashboard                |

  Examples:
    | page            |
    | /               |
    | /job-seekers          |
    | /academic      |
    | /staff  |
    | /student        |

#  @anon
#  Scenario: View home page lhrd banner link and texts
#    Given I am on the homepage
#    Then I should see that lhrd banner is linked to the home page
#
#  @anon
#  Scenario Outline: View page header on other pages: Home page header text doesn't appear on other pages
#    Given I am on "<page>"
#    Then I should not see the "text" "Come for the software, stay for the community" in "left header" area
#    And I should not see the "text" "Drupal is an open source content management platform powering millions of websites and applications." in "left header" area
#
#    Examples:
#    | page            |
#    | /job-seekers    |
#    | /academic       |
#    | /staff          |
#    | /student        |
#
#  @anon
#  Scenario: View search box and filter options in header area
#    When I am on the homepage
#    Then I should see the "text" "Refine your search" in "right header" area
#    And I should not see the "link" "Refine your search" in "right header" area
#    And I should see the following <options> in "right header" area
#    | options         |
#    | All             |
#    | Modules         |
#    | Themes          |
#    | Documentation   |
#    | Forums & Issues |
#    | Groups          |

#  @anon # @javascript
#  Scenario Outline: View search filter options in header area on other pages
#    Given I am on "<page>"
#    And I wait until the page is loaded
#    And I see the "link" "Refine your search" in "right header" area
#    When I click "Refine your search"
#    Then I should see the following <options> in "right header" area
#    | options         |
#    | All             |
#    | Modules         |
#    | Themes          |
#    | Documentation   |
#    | Forums & Issues |
#    | Groups          |
#
#    Examples:
#    | page            |
#    | /start          |
#    | /community      |
#    | /documentation  |
#    | /support        |
#    | /download       |
#    | /about          |
