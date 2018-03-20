# Project: Print a USPS Shipping Label #
The following project is designed to take about 4 hours. This time includes research, design, implementation, and testing. The project can be implemented using the language and framework of your choice. Feel free to leverage open source libraries or published techniques. Because the project is expected it take only 4 hours to implement, it is understood that this project will be a prototype, not a polished product.

The project specification is intentionally ambiguous and leaves room for interpretation. Implementing this project requires that you make design choices and use  case assumptions. Feel free to explain your assumptions when submitting your response.

## Requirements ##
Use the EasyPost API ( https://www.easypost.com/ ) to implement a web page where a user can print a USPS Shipping Label in order to mail packages.

**Inputs :**
* ‘From Address’ and ‘Destination Address’
* Package attributes such as weight and dimensions

**Output :**
* A USPS Shipping Label suitable for printing.
Other Instructions:
You will need to create an account at easypost.com in order to get API keys to test with. Printing real USPS labels costs real money, so its ok if your app prints test labels. Assume that if a user can access your web page they are authorized to print labels on your shipping account.

------------------------------------------

# About my solution #
A section for commentary about parts of my solution.

## Assumptions ##
* Anyone with access to the page is authorized to print labels, as such there will be no user validation system.

## Things to add going forward ##
* Address verification, currently an incorrect address will cause the Easy Post API to return an error. I would find and implement a tool to validate the addresses when they are submitted and return an error before attempting to create a label through the Easy Post API.
* Form validation, not filling in all required fields results in a 500 error. I would add form validation and messages to alert the user that more information is required.
* More advanced shipping options, there are number of option like customs info and insurance, shipping rate selection that are not currently implemented.
* Email the label link, I would like users to have a copy of the link sent to their in-box in case they lost the link or were not able to immediately able to print the label.
