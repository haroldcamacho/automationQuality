Feature: As a proffesor
         I want to see documents assigns like a tutor
         So i can score student

Background:
    Given I am in the application page
    And I enter username "carlos123"
    And I enter password "123123"

Scenario: Correct display of documents assigned as tutor
    When I will be redirected to the "Eventos" page, with name "carlos perez"
    And I will click the "Documentos" link
    And I will click the "Documentos asignados como tutor" link
    Then I should see the header "No."
    And I should see the header "Título"
    And I should see the header "Estudiante"
    And I should see the header "Carrera"

Scenario: Correct display of documents assigned as relator
    When I will be redirected to the "Eventos" page, with name "carlos perez"
    And I will click the "Documentos" link
    And I will click the "Documentos asignados como tutor" link
    Then I should see the header "No."
    And I should see the header "Título"
    And I should see the header "Estudiante"
    And I should see the header "Carrera"

Scenario: Correct display of review form
    When I will be redirected to the "Eventos" page, with name "carlos perez"
    And I will search "pruebaCarlos" row
    And I will click the create form button
    Then I should see the tittle "Nuevo Formulario de Revisión"

Scenario: Correct display of confirmation creation review form
    When I will be redirected to the "Eventos" page, with name "carlos perez"
    And I will search "pruebaCarlos" row
    And I will click the create form button
    And I will see the tittle "Nuevo Formulario de Revisión"
    And I will click the "Crear Formulario" link
    Then I should see the confirmation creation review form