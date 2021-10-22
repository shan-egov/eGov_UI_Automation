Feature: mCollect2 E2E Flow via Employee Application Creation

@mCollect2
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
  And Click On PAY
  And Enter GEN Receipt Number
  And Select GEN Receipt Issue Date
  Then Click Submit button
  Then Check Payment Receipt number
  And Employee Logout and Close
 
Examples: 
   | url     |Username | Password  | City    |mobile     |Mohalla           | Catagory               | Type    |
   | employee| MCS1    | eGov@123  | City A  |9869313101 |Main Road Abadpura|Advertisement Fee (OMD) |Hoardings|
 
 @mCollect2
Scenario Outline: Citizen Download recipt
	Given Open new web url "<url>"
	When Select the language
	Then Enter eGov username as "<Username>"
  And Enter eGov password as "<Password>"
  And Select eGov city field
  And Select City "<City>"
  And Click on Continue to proceed further
  And Click on mCollect option
  And Click on Home Option Top
  When Click On Search mchallan
  Then Enter Challan Number
  And Enter Mobile Number "<mobile>"
  And Click On Search
  And Check and Select Status "<Status>"
  Then Click on Challan Number
  And Click On Download
  And Click on Home Option Top
  And Employee Logout and Close

Examples: 
   | url     |Username | Password  | City    |mobile     |Status|
   | employee| MCS1    | eGov@123  | City A  |9869313101 |Paid  |
  