Feature: Student Job Workflow for Demo
  In order for the demo to be a success
  As a user demoing the site
  I should be able to run this behat test without failures

  @api @javascript
  Scenario: Student Supervisor posts a job
    Given I am logged in as "StudentSoup"
    Given I am on "admin/dashboard"
    When I follow "Add new Student Job"
    Given I fill in "Student Job Title" with "Front desk clerk"
    And I fill in "Student Job Title" with "Another Test Job"
    And I select "Data Lab - 189 Doe Annex" from "Department"
    And I select "Student Assistant I, Level 1, ($10.60/hr)" from "Classification"
    And I select "StudentSoup" from "Student supervisor"
    And I fill in "Minimum Hours/Week" with "0"
    And I fill in "Maximum Hours/Week" with "168"
    And I fill in "Minimum Hours/Shift" with "0"
    And I fill in "Specific Work Hours" with "some random information"
    And I fill in "How many students will be hired for this job?" with "2"
    And I fill in "Job Duties" with "Bring Honza Nourishment"
    And I fill in "Required Qualifications" with "Be Cool"
    And I fill in "Desired Qualifications" with "Be Chill"
    And I fill in "Special Notes" with "Best Job Ever"
    And I check the box "edit-flag-unpublish-student-job"
    And I press "Save"
    Then I should see text matching "has been requested"

  @api @javascript
  Scenario: HR Analyst posts comment on newly posted student job
    Given I am logged in as "HRAnalyst"
    Given I am on "admin/dashboard"
    When I follow "Manage All Jobs"
    When I follow "SomeJob - Job #16"
    Given I add "There is an error in your job request that needs to be fixed." comment
    Then I should see text matching "has been notified about your comment"

  @api
  Scenario: Student Supervisor corrects job and resubmits
    Given I am logged in as "StudentSoup"
    Given I am on "admin/dashboard"
    When I follow "My Job Requests"
    When I follow "SomeJob - Job #16"
    When I follow "Edit"
    Given I check the box "edit-flag-unpublish-student-job"
    And I press "Save"
    Then I should see text matching "has been requested"

  @api
  Scenario: HR Analyst approves job
    Given I am logged in as "HRAnalyst"
    Given I am on "admin/dashboard"
    When I follow "Manage All Jobs"
    When I follow "SomeJob - Job #16"
    When I follow "Edit"
    Given I check the box "edit-flag-publish-student-job"
    And I press "Save"
    Then I should see text matching "has been published"

  @api
  Scenario: LBS Analyst approves job
    Given I am logged in as "LBSAnalyst"
    Given I am on "admin/dashboard"
    When I follow "LBS Worklist"
    When I follow "SomeJob - Job #16"
    When I follow "Edit"
    Given I check the box "edit-flag-las-lbschartstringcheck"
    And I press "Save"
    Then I should see text matching "has been updated"

  @api
  Scenario: Student Supervisor closes job after it is filled
    Given I am logged in as "StudentSoup"
    Given I am on "admin/dashboard"
    When I follow "My Job Requests"
    When I follow "SomeJob - Job #16"
    When I follow "Edit"
    Given I uncheck the box "edit-flag-unpublish-student-job"
    And I press "Save"
    Then I should see text matching "has been unrequested"
