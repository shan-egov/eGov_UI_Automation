Feature: FSM7 E2E Flow via Citizen Application Creation

@fsm7
Scenario Outline: Create FSM application as a citizen- Institutional Property Type
  Given Open new web url "<url>"
	When Click on Apply Septic Tank Pit
	And Feed mobile number as "<mobile>"
	And Feed Pin code as "<pin>"
  Then Click on Property type Radio button "<Property>"
  When Click on Next button
  And Select Citizen Property SubType "<Subtype>"
  When Click on Next button
  And Pin Property Location
  And Check Can enter city
  When Scroll click on Next button
  Then Enter pincode "<wrongpin>"
  When Click on Next button
  Then Verify provide valid pin text 
  And Clear pin field
  And Click skip and next
  And Select City and Check Locality
  When Click on Next button
  And Click Slum Located Option
  When Click on Next button
  Then Provide Name of the Slum "<Slum_Area>"
  When Click on Next button
  Then Enter Street and Door
  When Click on Next button
  Then Verify Landmark Page
  And Click skip and next
  And Choose Sanitation type
  When Click on Next button
  Then Enter Length Breadth and Depth
  When Click on Next button
  Then Click Submit button
  Then Check Application Number
  And Logout from eGov and Close
Examples: 
   | url    |mobile       | pin    |Property     |Subtype|Slum_Area |wrongpin|
   | citizen| 9869313101  | 123456 |Institutional|Temple |K.K sahi  |400013  |

@fsm7
Scenario Outline: Admin Reject the Application
	Given Open new web url "<url>"
	When Select the language
	Then Enter eGov username as "<Username>"
  And Enter eGov password as "<Password>"
  And Select eGov city field
  And Select City "<City>"
  And Click on Continue to proceed further
  And Click on FSM
  And Click on Inbox
  When Enter Application Number
  Then Click On Search
  And Click on Application Number
  When Click On Take Action button
  Then Click On Reject
  And Select Reason "<reason>"
  And Enter Comment
  Then Click On Decline Request button
  And Employee Logout and Close
Examples: 
   | url    |Username |Password   | City   |reason                       |
   |employee|QAADMIN  | eGov@123  | City A |Not able to contact applicant|
   