@p1 @api
Feature: Student Job Scenarios via Drupal
  In order to post or find, and apply for student jobs
  As a anonymous user
  The job board and application must be available

Scenario: See most recent jobs on homepage
    Given I am an anonymous user
    And I am on the homepage
    And I follow the "View More..."
    Then I should see "Student Library Job Postings"

Scenario: View and search for available student jobs
    Given I am an anonymous user
    And  I am on the homepage

Scenario: Apply for a student job
    Given I am an anonymous user
    And I am on 'student-jobs/job2'
    And I see 'How to apply'
    And I select 'Apply for this job'
    Then I should see 'your pdf applicatoin has been downloaded'
    And I should see 'please complete the application and return it to lhrd'

