Feature: As a student
         I want to upload my document to an event
         so that It can be reviewed

Background: Student is logged In
  Given I am on the sistema de revision y evaluacion de documentos login page
  When I enter username "haroldcj"
  And I enter password "123123"
  Then I will be redirected to the "Eventos" page, with name "Harold Camacho"

@Regression 
@SmokeTests
Scenario Outline: Upload a valid pdf format file
  Given I am on the "Eventos" page
  When I select the "capybara" event
  And I click on "añadir" button 
  And I select "<Tipo_de_Documento>"
  And I type "<Titulo>" on the titulo field
  And fill "<Link>" on the google docs Link
  And type "<Resumen_o_Introduccion>" on the Resume field
  And upload the "pruebaQA.pdf" file
  And click on the button "Registrar"
  Then I will be redirected to the "Documentos" page
  And the file "pruebaQA" I just uploaded is listed

Examples:
  | Tipo_de_Documento | Titulo     | Link               | Resumen_o_Introduccion |
  | Proyecto de Grado | pruebaQA1  | pruebaQA1.com      |  documento de prueba   |
  | Tesis de Grado    | pruebaQA2  | pruebaQA2.com      |  documento de prueba   |
  | Pasantía          | pruebaQA3  | pruebaQA3.com      |  documento de prueba   |
  | Trabajo Dirigido  | pruebaQA4  | pruebaQA4.com      |  documento de prueba   |

Scenario Outline: Upload an invalid txt format file
  Given I am on the "Eventos" page
  When I select the "capybara" event
  And I click on "añadir" button 
  And I select "<Tipo_de_Documento>"
  And I type "<Titulo>" on the titulo field
  And fill "<Link>" on the google docs Link
  And type "<Resumen_o_Introduccion>" on the Resume field
  And try to upload the "config.txt" file
  And click on the button "Registrar"
  Then the error message "Debe elegir un archivo PDF" will be shown

Examples:
  | Tipo_de_Documento | Titulo     | Link               | Resumen_o_Introduccion |
  | Proyecto de Grado | pruebaQA1  | pruebaQA1.com      |  documento de prueba   |
  | Tesis de Grado    | pruebaQA2  | pruebaQA2.com      |  documento de prueba   |
  | Pasantía          | pruebaQA3  | pruebaQA3.com      |  documento de prueba   |
  | Trabajo Dirigido  | pruebaQA4  | pruebaQA4.com      |  documento de prueba   |
