@api
Feature: Student Job Scenarios via Drupal
  In order to request, post, unpublish, or repost a student job requisition
  As a student supervisor or HR analyst
  I need to be able to request, post, unpublish a student job to be filled

  Scenario: View the texts and links on the page
    Given I am logged in as a user with the "Student Supervisor" role
    And I visit "/admin/dashboard"
    Then I should see the heading "Dashboard"
    And I should see the link "Add new Student Job"

  @api @ssuper
  Scenario: Create a new Student Job
    #Given I am logged in as "ssuper"
    Given I am logged in as a user with the "Student Supervisor" role
    And I am on "node/add/job-student"
    Given I fill in "Student Job Title" with "Front desk clerk"
    And I fill in "Student Job Title" with "Another Test Job"
    And I select "Data Lab - 189 Doe Annex" from "Department"
    And I select "Student Assistant I, Level 1, ($10.60/hr)" from "Classification"
    And I select "ssuper" from "Student supervisor"
    And I fill in "Minimum Hours/Week" with "0"
    And I fill in "Maximum Hours/Week" with "168"
    And I fill in "Minimum Hours/Shift" with "0"
    And I fill in "Specific Work Hours" with "some random information"
    And I fill in "How many students will be hired for this job?" with "2"
    And I fill in "Job Duties" with "Bring Honza Nourishment"
    And I fill in "Required Qualifications" with "Be Cool"
    And I fill in "Desired Qualifications" with "Be Chill"
    And I fill in "Special Notes" with "Best Job Ever"
    And I press "Save"
    Then print last response
    Then I should see text matching "has been created"
    Then I should see text matching "An email has been sent to"

#  @scoord @tbd
#  Scenario: Reviews, approves and publishes student job
#    Given I am logged in as a user with the "HR Analyst" role
#    Given I am on "admin/dashboard"
#    When I follow "Workflow"
#    Then I should see approve
