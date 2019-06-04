# Given I am on the Google homepage
Given(/^I am on the sistema de revision y evaluacion de documentos login page$/) do
    page.driver.browser.manage.window.maximize
    visit ('/users/sign_in')
  end
  
#   When I search for "houston dynamo tickets"
  When(/^I enter username "([^"]*)"$/) do |valueToUsername|
    fill_in('user[login]',:with => valueToUsername).native.send_keys(:return)
  end
  
#   Then I will click the "Tickets | Houston Dynamo" link
  And(/^I enter password "([^"]*)"$/) do |valueToPassword|
    fill_in('user[password]',:with => valueToPassword).native.send_keys(:return)
end
  
  
  
#   Then UCB is located at "M.M.Marques, Cochabamba" street
  Then(/^I will be redirected to the "([^"]*)" page$/) do |tittle|
    page.has_text?(tittle)
    
end