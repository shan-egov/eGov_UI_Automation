Feature: mCollect5 E2E Flow via Employee Application Creation

@mCollect5
Scenario Outline: Employee Application Creation
	Given Open new web url "<url>"
	When Select the language
	Then Enter eGov username as "<Username>"
  And Enter eGov password as "<Password>"
  And Select eGov city field
  And Select City "<City>"
  And Click on Continue to proceed further
  And Click on mCollect option
  And Enter Mobile Number "<mobile>"
  And Enter Consumer Name
  And Enter Door Number
  And Enter Street Name
  And Enter Building Number
  And Enter Pincode
  And Select Locality Mohalla "<Mohalla>"
  And Select Serviece Category "<Catagory>"
  And Select Serviece Type "<Type>"
  And Select From and To Date
  And Enter Tax
  And Enter Feild Fee
  Then Click Submit button
  Then Check Challan Number
  And Click On Print
  And Click on Home Option Top
  And Employee Logout and Close
 
Examples: 
   | url     |Username | Password  | City    |mobile     |Mohalla           | Catagory               | Type     |
   | employee| MCS1    | eGov@123  | City A  |9869313101 |Main Road Abadpura|Advertisement Fee (OMD) |Hoardings |
  
  
@mCollect5
Scenario Outline: Citizen Application Pay
  Given Open new web url "<url>"
	When Click On Search and Pay
	And Feed mobile number as "<mobile>"
	And Feed Pin code as "<pin>"
  And Citizen Enter City
  And Choose Service Category "<Type>"
  Then Citizen Enter Challan Number
  And Enter Mobile Number "<mobile>"
  Then Click On Search
  And Click On View Details
  And Click Make Payment
	And Click Pay button
	And Click On Master Card
	When Enter Card Details "<cardnum>"
	Then Click On Pay Now button
	And Click On Submit
	Then Check Payment Receipt number
	And Download Reciept and Goto Homepage
	And Verify Citizen Home Page
  
  
  Examples: 
   | url     |mobile      | pin   | City   | Type     |cardnum         |
   | citizen | 9869313101 | 123456| City A |Hoardings |5457210001000019|
  
  