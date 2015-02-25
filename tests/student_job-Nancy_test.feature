@student-form 
Feature: Drupal Complete Student Requisition Form 
  In order to get approval for student job posting
  As a staff user
  I want to create a student job request 
  
  @api @wip @requestor
  Scenario: Open "Add new Student Job" from the dashboard
    Given I am logged in as a user with the 'authenticated user' role
    And I am on 'node/add/job-student/240' 
    When I fill in 'Student Job Title' with Library Student Superstar' 
    And I fill in "How many students will be hired for this job?" with '3'
    And I select "Access Services Division – 198 Gardner Stacks" from the suggestion
    "Department"
    And I select "Student Assistant I, Level 1, ($10.60/hr)" from the suggestion  
    "Classification"
    And I select "Oanh (Nancy) Tran, BA" from the suggestion "Student Supervisor"
    And I select "Yes" from the suggestion "Are you the Timecard Supervisor?"   
    And I select "Work Study Required" from the suggestion "Does this job require work study?" 
    And I select "Yes" from the suggestion "Use Existing Friendly Name/Chartstring?" 
    And I select "KPADM-DMRM-TRAN" from the suggestion "Friendly Name/Chartstring"
    And I fill in 'Minimum Hours/Week' with "10.00"
    And I fill in 'Maximum Hours/Week' with '19.00'
    And I fill in 'Maximum Hours/Shift' with '3.00' 
    And I fill in 'Specific Work Hours' with '9am – 5pm, M - F'
    And I fill in "Job Duties" with 'Provide assistance'
    And I fill in "Required Qualifications" with 'Be really awesome'
    And I fill in "Special Notes" with 'Must work over summer'
    And I select 'Request Job Posting' 
    And I press 'Save'
    Then I should be redirected to the student job page
    Then I should see 'email sent to Oanh (Nancy) Tran'


@HR_analyst
Scenario: Open to student job from email notification when request is submitted 
    Given I am logged in as a user with the 'HR analyst' role
    And I am on 'node/job-student/240'
    And I press "Publish"
    Then I should see "Email sent to LBS"

@HR_analyst
Scenario: Open to student job from email notification when request is submitted 
    Given I am logged in as a user with the 'HR analyst' role
    And I am on 'node/job-student/240'
    And I enter "Change this thing, please" in the textbox 'Comments'
    And I press 'Save'
    Then I should see "Returned to requestor"
    Then I should see "Email sent to Oanh (Nancy) Tran"

@LBS
Scenario: Approve a student job request
    Given I am logged in as a user with "LBS Analyst" role
    And I am on 'dashboard' 
    And I select "Approve job" in 'Student Jobs to be Approved by LBS'
    Then I should see "Email sent to Oanh (Nancy) Tran"

@LBS
Scenario: Reject a student job request from student job node
    Given I am logged in as a user with "LBS Analyst" role
    And I am on 'dashboard' 
    And I select "edit" in 'Student Jobs to be Approved by LBS'
    And I enter "This thing is not allowed for >reason<; please use different thing" in 'Comments'
    And I press "Save"
    Then I should see "Returned to requestor"
    Then I should see "Email sent to Oanh (Nancy) Tran"
