Feature: As a estudent
         I want to register my account
         So i can use the app

Scenario: Succesful register
    Given I am in the register student page
    When I enter name "abel"
    And I enter lastname "mamani"
    And I enter as username "abelman"
    And I enter ci "12345678"
    And I enter mail "abelman@gmail.com"
    And I enter as password "123456"
    And I re enter password "123456"
    And I choose as career "Ingeniería de Sistemas"
    And I press register button "REGISTRARSE"
    Then I will login to the page, with name "abel mamani"

Scenario: Email error
    Given I am in the register student page
    When I enter name "abel"
    And I enter lastname "mamani"
    And I enter as username "abelman"
    And I enter ci "12345678"
    And I enter mail "1234567898765432"
    And I enter as password "123456"
    And I re enter password "123456"
    And I press register button "REGISTRARSE"
    Then I will stay at register page

Scenario: telephone error
    Given I am in the register student page
    When I enter name "abel"
    And I enter lastname "mamani"
    And I enter as username "abelman"
    And I enter ci "12345678"
    And I enter a phone "123456789"
    And I enter mail "abelman@gmail.com"
    And I enter as password "123456"
    And I re enter password "123456"
    And I press register button "REGISTRARSE"
    Then I will see an error message "El celular no puede tener más de 8 caracteres"

Scenario: blank email
    Given I am in the register student page
    When I enter name "abel"
    And I enter lastname "mamani"
    And I enter as username "abelman"
    And I enter ci "12345678"
    And I enter a phone "123456789"
    And I enter as password "123456"
    And I re enter password "123456"
    And I press register button "REGISTRARSE"
    Then I will stay at register page

Scenario: telephone error
    Given I am in the register student page
    When I enter name "abel"
    And I enter lastname "mamani"
    And I enter as username "abelman"
    And I enter ci "12345678"
    And I enter a phone "123456789"
    And I enter mail "abelman@gmail.com"
    And I enter as password "123456"
    And I re enter password "123456"
    And I press register button "REGISTRARSE"
    Then I will see an error message "El celular no puede tener más de 8 caracteres"



