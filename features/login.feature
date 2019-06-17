Feature: As a student, professor and administrator
         I want to login to Sistema de Revision y evaluacion de documentos
         so I can use the app

@Regression
@SmokeTests        
Scenario: Succesful login as student
  Given I am on the sistema de revision y evaluacion de documentos login page
  When I enter username "haroldcj"
  And I enter password "123123"
  Then I will be redirected to the "Eventos" page, with name "Harold Camacho"

  @Regression
  Scenario: Succesful login as proffesor
  Given I am on the sistema de revision y evaluacion de documentos login page
  When I enter username "carlos123"
  And I enter password "123123"
  Then I will be redirected to the "Eventos" page, with name "carlos perez"

  @Regression
  Scenario: Succesful login as administrator
  Given I am on the sistema de revision y evaluacion de documentos login page
  When I enter username "sandoval"
  And I enter password ".sandoval."
  Then I will be redirected to the "Eventos" page, with name "Juan Pablo Sandóval Alcocer"