Feature: As a student
         I want to upload my document to an event
         so that It can be reviewed

Background: Student is logged In
  Given I am on the sistema de revision y evaluacion de documentos login page
  When I enter username "haroldcj"
  And I enter password "123123"
  Then I will be redirected to the "Eventos" page, with name "Harold Camacho"


Scenario: Upload a valid pdf format file
  Given I am on the "Eventos" page
  When I select the "capybara" event
  And I click on "añadir" button 
  And I select proyecto de Grado
  And I type "pruebaQA" on the titulo field
  And fill "pruebaQA.com" on the google docs Link
  And type "documento de prueba" on the Resume field
  And upload the "pruebaQA.pdf" file
  And click on the button "Registrar"
  Then I will be redirected to the "Documentos" page
  And the file "pruebaQA" I just uploaded is listed

Scenario: Upload an invalid txt format file
  Given I am on the "Eventos" page
  When I select the "capybara" event
  And I click on "añadir" button 
  And I select proyecto de Grado
  And I type "pruebaQA" on the titulo field
  And fill "pruebaQA.com" on the google docs Link
  And type "documento de prueba" on the Resume field
  And try to upload the "config.txt" file
  And click on the button "Registrar"
  Then the error message "Debe elegir un archivo PDF" will be shown

