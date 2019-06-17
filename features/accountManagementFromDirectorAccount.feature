Feature: As director
         I want to manage accounts
         So that they can be created or modified by me

Background: Director is logged In
  Given I am on the sistema de revision y evaluacion de documentos login page
  When I enter username "yanina"
  And I enter password "galaburda"
  Then I will be redirected to the "Eventos" page, with name "Yanina Galaburda"
  And I click on "Usuarios" from the navbar
  And click on "Crear Usuarios" from the drop menu
  Then I should be redirected to the "Crear Usuario" window

Scenario: Unsuccesful register of a student with error phone
  When I enter the required fields as show below
	|First Name: 	    | abel                   |
  |Last Name: 	    | mamani                 |
  |User Name: 	    | abelmam                |
  |User Career: 	  | Ingeniería de Sistemas |
  |Email: 	        | abelman@gmail.com      |
  |Password:        | 123456                 | 
  |User Phone: 	    | 1234567                |
  And I press register button "REGISTRARSE"
  Then I will stay at "Crear usuario" page

@Regression
Scenario: Succesful register of a student with valid phone
  When I enter the required fields as show below
	|First Name: 	    | abel                   |
  |Last Name: 	    | mamani                 |
  |User Name: 	    | abelmam                |
  |User Career: 	  | Ingeniería de Sistemas |
  |Email: 	        | abelman@gmail.com      |
  |Password:        | 123456                 | 
  |User Phone: 	    | 12345678               |
  And I press register button "REGISTRARSE"
  Then I will stay at "Usuarios" page

@Regression
@SmokeTests
Scenario: Succesful register of a student with valid phone
  When I enter the required fields as show below
	|First Name: 	    | abel                   |
  |Last Name: 	    | mamani                 |
  |User Name: 	    | abelmam                |
  |User Career: 	  | Ingeniería de Sistemas |
  |Email: 	        | abelman@gmail.com      |
  |Password:        | 123456                 | 
  |User Phone: 	    | 12345678               |
  And I press register button "REGISTRARSE"
  Then I will stay at "Usuarios" page

Scenario: Unsuccesful register of a student with invalid password
  When I enter the required fields as show below
	|First Name: 	    | abel                   |
  |Last Name: 	    | mamani                 |
  |User Name: 	    | abelmam                |
  |User Career: 	  | Ingeniería de Sistemas |
  |Email: 	        | abelman@gmail.com      |
  |Password:        | 12345                  | 
  |User Phone: 	    | 12345678               |
  And I press register button "REGISTRARSE"
  Then I will see an error message "La contraseña debe tener al menos 6 caracteres"

Scenario: Succesful register of a student with valid password
  When I enter the required fields as show below
	|First Name: 	    | abel                   |
  |Last Name: 	    | mamani                 |
  |User Name: 	    | abelmam                |
  |User Career: 	  | Ingeniería de Sistemas |
  |Email: 	        | abelman@gmail.com      |
  |Password:        | 123456                 | 
  |User Phone: 	    | 12345678               |
  And I press register button "REGISTRARSE"
  Then I will stay at "Usuarios" page

Scenario: Unsuccesful register of a student without first name
  When I enter the required fields as show below
	|First Name: 	    |                        |
  |Last Name: 	    | mamani                 |
  |User Name: 	    | abelmam                |
  |User Career: 	  | Ingeniería de Sistemas |
  |Email: 	        | abelman@gmail.com      |
  |Password:        | 123456                 | 
  |User Phone: 	    | 12345678               |
  And I press register button "REGISTRARSE"
  Then I will see an error message "El nombre no puede estar vacío"

Scenario: Unsuccesful register of a student without last name
  When I enter the required fields as show below
	|First Name: 	    | abel                   |
  |Last Name: 	    |                        |
  |User Name: 	    | abelmam                |
  |User Career: 	  | Ingeniería de Sistemas |
  |Email: 	        | abelman@gmail.com      |
  |Password:        | 123456                 | 
  |User Phone: 	    | 12345678               |
  And I press register button "REGISTRARSE"
  Then I will see an error message "Los apellidos no pueden estar vacíos"

@Regression
Scenario: Unsuccesful register of a student without user name
  When I enter the required fields as show below
	|First Name: 	    | abel                   |
  |Last Name: 	    | mamani                 |
  |User Name: 	    |                        |
  |User Career: 	  | Ingeniería de Sistemas |
  |Email: 	        | abelman@gmail.com      |
  |Password:        | 123456                 | 
  |User Phone: 	    | 12345678               |
  And I press register button "REGISTRARSE"
  Then I will see an error message "El nombre de usuario no puede estar vacío"

Scenario: Unsuccesful register of a student without career
  When I enter the required fields as show below
	|First Name: 	    | abel                   |
  |Last Name: 	    | mamani                 |
  |User Name: 	    | abelmam                |
  |Email: 	        | abelman@gmail.com      |
  |Password:        | 123456                 | 
  |User Phone: 	    | 12345678               |
  And I press register button "REGISTRARSE"
  Then I will see an error message "Debe elegir una carrera"

Scenario: Unsuccesful register of a student without email
  When I enter the required fields as show below
	|First Name: 	    | abel                   |
  |Last Name: 	    | mamani                 |
  |User Name: 	    | abelmam                |
  |User Career: 	  | Ingeniería de Sistemas |
  |Password:        | 123456                 | 
  |User Phone: 	    | 12345678               |
  And I press register button "REGISTRARSE"
  Then I will stay at "Crear usuario" page
