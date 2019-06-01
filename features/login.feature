Feature: As a student or professor
         I want to login to Sistema de Revision y evaluacion de documentos
         so I can use the app
        
Scenario: Succesful login        
  Given I am on the sistema de revision y evaluacion de documentos login page
  When I enter username "haroldcj"
  And I enter password "123123"
#   And press login button "INGRESAR"
  Then I will be redirected to the "Eventos" page