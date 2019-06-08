Feature: As a estudent
         I want to register my account
         So i can use the app

Scenario: Succesful register
    Given I am in the register student page
    When I enter the required fields as show below
	|First Name: 	    | abel                   |
    |Last Name: 	    | mamani                 |
    |User Name: 	    | abelmam                |
    |User Ci: 	        | 12345678               |
    |Career: 	        | Ingeniería de Sistemas |
    |Email: 	        | abelman@gmail.com      |
    |Password:          | 123456                 | 
    |Confirm Password:  | 123456                 |
	And I press register button "REGISTRARSE"
    Then I will login to the page, with name "abel mamani"

Scenario: Email error
    Given I am in the register student page
    When I enter the required fields as show below
	|First Name: 	    | abel                   |
    |Last Name: 	    | mamani                 |
    |User Name: 	    | abelmam                |
    |User Ci: 	        | 12345678               |
    |Career: 	        | Ingeniería de Sistemas |
    |Email: 	        | abelman@gmail.com      |
    |Password:          | 123456                 | 
    |Confirm Password:  | 123456                 |
    And I press register button "REGISTRARSE"
    Then I will stay at register page

Scenario: telephone error
    Given I am in the register student page
    When I enter the required fields as show below
	|First Name: 	    | abel                   |
    |Last Name: 	    | mamani                 |
    |User Name: 	    | abelmam                |
    |User Ci: 	        | 12345678               |
    |User Phone: 	    | 12345678               |
    |Career: 	        | Ingeniería de Sistemas |
    |Email: 	        | abelman@gmail.com      |
    |Password:          | 123456                 | 
    |Confirm Password:  | 123456                 |
    And I press register button "REGISTRARSE"
    Then I will see an error message "El celular no puede tener más de 8 caracteres"

Scenario: blank email
    Given I am in the register student page
    When I enter the required fields as show below
	|First Name: 	    | abel                   |
    |Last Name: 	    | mamani                 |
    |User Name: 	    | abelmam                |
    |User Ci: 	        | 12345678               |
    |Career: 	        | Ingeniería de Sistemas |
    |Email: 	        |                        |
    |Password:          | 123456                 | 
    |Confirm Password:  | 123456                 |
    And I press register button "REGISTRARSE"
    Then I will stay at register page

Scenario: telephone error
    Given I am in the register student page
    When I enter the required fields as show below
	|First Name: 	    | abel                   |
    |Last Name: 	    | mamani                 |
    |User Name: 	    | abelmam                |
    |User Ci: 	        | 12345678               |
    |Career: 	        | Ingeniería de Sistemas |
    |Email: 	        | abelman@gmail.com      |
    |Password:          | 123456                 | 
    |Confirm Password:  | 123456                 |
    |User Phone: 	    | 123456789              |
    And I press register button "REGISTRARSE"
    Then I will see an error message "El celular no puede tener más de 8 caracteres"



