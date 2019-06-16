Feature: As an admin
         I want to manage an event
         so that It can be accessed by students and professor

Background: Admin is logged In
  Given I am on the sistema de revision y evaluacion de documentos login page
  When I enter username "sandoval"
  And I enter password ".sandoval."
  Then I will be redirected to the "Eventos" page, with name "Juan Pablo Sandóval Alcocer"

Scenario Outline: Create an event
  Given I am on the "Eventos" page
  When I select the Eventos button on the menu
  And I click on the "Crear evento" button from the menu
  And I select "<semestre>" semester
  And select the year "<anho>" 
  And fill "pruebaQA" on Nombre del evento field
  And select the career <carrera> on the Carrera field
  And fill reception limit date with "<fecha>" 
  And click on the button "Registrar evento"
  Then I will be redirected to the "Eventos" page
  And the event "pruebaQA" I just created is listed

Examples:
  | semestre  | anho   | carrera                  |  fecha       |
  | Primer    | 2019   | "Ingeniería de Sistemas" |  2019-11-29  |
  | Primer    | 2019   | "Ingeniería Ambiental"   |  2019-11-29  |
  | Primer    | 2019   | "Ingeniería Civil"       |  2019-11-29  |
  | Primer    | 2019   | "Ingeniería Mecatrónica" |  2019-11-29  |
  | Segundo   | 2019   | "Ingeniería de Sistemas" |  2019-11-29  |
  | Segundo   | 2019   | "Ingeniería Ambiental"   |  2019-11-29  |
  | Segundo   | 2019   | "Ingeniería Civil"       |  2019-11-29  |
  | Segundo   | 2019   | "Ingeniería Mecatrónica" |  2019-11-29  |
