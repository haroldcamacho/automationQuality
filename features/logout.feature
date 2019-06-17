Feature: As a student, professor and administrator
         I want to log out to Sistema de Revision y evaluacion de documentos
         so I can protect my account

@Regression
Scenario: Succesful logout as proffesor
  Given I am on the sistema de revision y evaluacion de documentos login page
  And I enter username "carlos123"
  And I enter password "123123"
  And I was redirected to the "Eventos" page, with name "carlos perez"
  When I will click in my name link
  Then I will click in "Salir" link

@Regression
Scenario: Succesful logout as student
  Given I am on the sistema de revision y evaluacion de documentos login page
  And I enter username "haroldcj"
  And I enter password "123123"
  And I was redirected to the "Eventos" page, with name "Harold Camacho"
  When I will click in my name link
  Then I will click in "Salir" link

Scenario: Succesful logout as administrator
  Given I am on the sistema de revision y evaluacion de documentos login page
  And I enter username "sandoval"
  And I enter password ".sandoval."
  And I was redirected to the "Eventos" page, with name "Juan Pablo Sandóval Alcocer"
  When I will click in my name link
  Then I will click in "Salir" link