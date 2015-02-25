Feature: User Dashboards
  In order to be able to manage content on the site
  As a user that can access the dashboard
  I should use the various tabs and views

  Scenario: Make sure anonymous users can't access the dashboard
    Given I am an anonymous user
    Given I am on "admin/dashboard"
    Then I should see "Access denied"

  @api
  Scenario: Make sure "authenticated user" can't access the dashboard
    Given I am logged in as a user with the "authenticated user" role
    Given I am on "admin/dashboard"
    Then I should see "Access denied"

  @api
  Scenario: Make sure "HR Analyst" can access ChartstringsVBO, ManageAllJobsVBO, ManageUsersVBO, and Library Units
    Given I am logged in as a user with the "HR Analyst" role
    Given I am on "admin/dashboard/manage-chartstrings"
    Then I should not see "Access denied"
    Given I am on "admin/dashboard/manage-all-jobs"
    Then I should not see "Access denied"
    Given I am on "admin/dashboard/manage-users"
    Then I should not see "Access denied"
    Given I am on "admin/dashboard/units"
    Then I should not see "Access denied"

  @api
  Scenario: Make sure "LBS Analyst" can access ChartstringsVBO and LBSWorklistVBO
    Given I am logged in as a user with the "LBS Analyst" role
    Given I am on "admin/dashboard/manage-chartstrings"
    Then I should not see "Access denied"
    Given I am on "admin/dashboard/lbs-worklist"
    Then I should not see "Access denied"

  @api
  Scenario: Make sure "Student Supervisor" can access MyJobRequestsVBO
    Given I am logged in as a user with the "HR Analyst" role
    Given I am on "admin/dashboard/my-job-requests"
    Then I should not see "Access denied"
