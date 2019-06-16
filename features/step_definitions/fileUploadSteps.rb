Given("I am on the {string} page") do |eventos|
    page.driver.browser.manage.window.maximize
    page.has_text?(eventos)
  end
  
  When("I select the {string} event") do |capybara|
    click_link(capybara)  
end
  
  When("I click on {string} button") do |string|
    find(:xpath, "/html/body/div[1]/a").click
  end


  When("I select {string}") do |string|
    find(:xpath, '//*[@id="new_paper"]/div[1]/div/input').click
    find('span', text: string).click
  end
  
  When("I type {string} on the titulo field") do |string|
    fill_in('paper[title]', :with => string)
  end
  
  When("fill {string} on the google docs Link") do |string|
    fill_in('paper[google_docs_link]', :with => string)
  end
  
  When("type {string} on the Resume field") do |string|
    fill_in('paper[resume]', :with => string)
  end
  
  When("upload the {string} file") do |string|
    page.attach_file('paper[pdf_file]',File.absolute_path('./features/step_definitions/docs/'+string), make_visible: true)
  end
  
  When("click on the button {string}") do |string|
    click_button(string)
  end
  
  Then("I will be redirected to the {string} page") do |string|
    page.has_text?(string)
  end
  Then("the file {string} I just uploaded is listed") do |string|
    find_all('a', text: string)
  end

  When("try to upload the {string} file") do |string|
    page.attach_file('paper[pdf_file]',File.absolute_path('./features/step_definitions/docs/'+string), make_visible: true)
  end
  
  Then("the error message {string} will be shown") do |string|
    page.has_text?(string)
  end