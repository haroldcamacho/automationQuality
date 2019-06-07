Feature: As a student, professor and administrator
         I want to log out to Sistema de Revision y evaluacion de documentos
         so I can protect my account

Scenario: Succesful login as proffesor
  Given I am on the sistema de revision y evaluacion de documentos login page
  And I enter username "carlos123"
  And I enter password "123123"
  And I was redirected to the "Eventos" page, with name "carlos perez"
  When I will click in my name link