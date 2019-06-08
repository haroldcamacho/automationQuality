Given("I am in the register student page") do
  visit ('/users/sign_up')
end
When(/^I enter the required fields as show below$/) do |table|
  data = table.rows_hash
  data.each_pair do |key, value|
    case key
	when "First Name:"
    fill_in 'user_name', :with => value
	when "Last Name:"
		fill_in 'user_lastname', :with => value
  when "User Name:"
		fill_in 'user_username', :with => value
  when "User Ci:"
    fill_in 'user_ci', :with => value
  when "User Phone:"
		fill_in 'user_phone', :with => value
	when "Career:"
    find(:xpath, '/html/body/div/div/div/div/div/form/div[5]/div/input').click 
    page.find('span', text: value).click
	when "User Career:"
    find(:xpath, '/html/body/div/div/div/div/div/form/div[4]/div[1]/div/input').click 
    page.find('span', text: value).click
	when "Email:"
		fill_in 'user_email', :with => value
	when "Password:"
		fill_in 'user_password', :with => value
	when "Confirm Password:"
		fill_in 'user_password_confirmation', :with => value
	end
  end
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
