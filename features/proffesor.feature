Feature: As a proffesor
         I want to see documents assigns like a tutor
         So i can score student

Scenario: Correct display of documents assigned as tutor
    Given I am in the application page
    And I enter username "carlos123"
    And I enter password "123123"
    When I will be redirected to the "Eventos" page, with name "carlos perez"
    And I will click the "Documentos" link
    And I will click the "Documentos asignados como tutor" link
    # And I will click the "2" link
    Then I should see the header "No."
    And I should see the header "Título"
    And I should see the header "Estudiante"
    And I should see the header "Carrera"

Scenario: Correct display of documents assigned as relator
    Given I am in the application page
    And I enter username "carlos123"
    And I enter password "123123"
    When I will be redirected to the "Eventos" page, with name "carlos perez"
    And I will click the "Documentos" link
    And I will click the "Documentos asignados como tutor" link
    # And I will click the "2" link
    Then I should see the header "No."
    And I should see the header "Título"
    And I should see the header "Estudiante"
    And I should see the header "Carrera"

Scenario: Correct display of review form
    Given I am in the application page
    And I enter username "carlos123"
    And I enter password "123123"
    When I will be redirected to the "Eventos" page, with name "carlos perez"
    And I will search "pruebaCarlos" row
    And I will click the create form button
    Then I should see the tittle "Nuevo Formulario de Revisión"
