Feature: Login 
I want to log into the website:
I have logged in 2 times, successfully login with the correct account and password.
 Login failed when entering wrong account and password.


Scenario Outline: Login invalid
Given Login page was opened successfully
When user enter invalid username '<username>' and password '<password>'
Then The login result is unsuccessful and displays the message "Your username is invalid!\n×"
 Examples:
            | username | password |
            | hoanghang  | hoanghang   |
            | abc   | abc |


Scenario: Login valid
Given Login page was opened successfully
When Enter the correct password and username
Then Successful login result and display the message "You logged into a secure area!\n×"



