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
  
  When("I select proyecto de Grado") do
    find(:xpath, '//*[@id="new_paper"]/div[1]/div/input').click.native.send_keys(:down)  
    sleep(10)
  end
  
  When("I type {string} on the titulo field") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  When("fill {string} on the google docs Link") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  When("type {string} on the Resume field") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  When("I click on the {string} button") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  When("select the {string} file") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  When("click on the button {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Then("I will be redirected to the {string} page") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end