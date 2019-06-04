Given("I am in the register student page") do
     visit ('/users/sign_up')
  end
  
  When("I enter name {string}") do |string|
    fill_in 'user_name', :with => string
    #loginMessage = 'Access details to demo site'
    #find(:xpath, '/html/body/table/tbody/tr[1]/td/h2', :text => loginMessage)
  end
  
  When("I enter lastname {string}") do |string|
    fill_in 'user_lastname', :with => string
  end

  When("I enter as username {string}") do |string|
    fill_in 'user_username', :with => string
  end

  When("I enter ci {string}") do |string|
    fill_in 'user_ci', :with => string
  end

  When("I enter a phone {string}") do |string|
    fill_in 'user_phone', :with => string.to_i
  end

  When("I choose as career {string}") do |string|

    #find(:xpath, '/html/body/div/div/div/div/div/form/div[5]/div/input', :text => 'Ingeniería de Sistemas') 
    find('select-dropdown dropdown-trigger').set('Ingeniería de Sistemas')
  end
  
  When("I enter mail {string}") do |string|
    fill_in 'user_email', :with => string
  end
  
  When("I enter as password {string}") do |string|
    fill_in 'user_password', :with => string
  end

  When("I re enter password {string}") do |string|
    fill_in 'user_password_confirmation', :with => string
  end
  
  When("I press register button {string}") do |string|
    #click('Registrarse')
    click_button('button')
  end

  Then("I will see an error message {string}") do |string|
    page.has_text?(string)
  end

  Then("I will stay at register page") do
    page.has_text?('Crear cuenta')
  end

