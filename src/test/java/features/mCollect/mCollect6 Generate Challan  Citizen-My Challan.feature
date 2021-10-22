Feature: mCollect6 E2E Flow via Citizen Application Creation

@mCollect6
Scenario Outline: Citizen Application Creation
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
  When Click On Search mchallan
  And Check and Select Status "<Status1>"
  And Scroll till Search button
  And Check and Select Status "<Status2>"
  And Scroll till Search button
  And Check and Select Status "<Status3>"
  And Scroll till Search button
  And Employee Logout and Close
 
Examples: 
   | url     |Username | Password  | City    |mobile     |Mohalla           | Catagory               | Type     |Status1|Status2 |Status3|
   | employee| MCS1    | eGov@123  | City A  |9869313101 |Main Road Abadpura|Advertisement Fee (OMD) |Hoardings |Paid   |Cancelled|Active|
  
  
@mCollect6
Scenario Outline: Citizen Application Pay
  Given Open new web url "<url>"
	When Click On My Challans
	And Feed mobile number as "<mobile>"
	And Feed Pin code as "<pin>"
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
  
  