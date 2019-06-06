Given(/^I am on the sistema de revision y evaluacion de documentos login page$/) do
    page.driver.browser.manage.window.maximize
    visit ('/users/sign_in')
  end
  
  When(/^I enter username "([^"]*)"$/) do |valueToUsername|
    fill_in('user[login]',:with => valueToUsername).native.send_keys(:return)
  end

  And(/^I enter password "([^"]*)"$/) do |valueToPassword|
    fill_in('user[password]',:with => valueToPassword).native.send_keys(:return)
end

Then(/^I will be redirected to the "([^"]*)" page, with name "([^"]*)"$/) do |tittle, name|
  if (find(:xpath, '/html/body/nav/div/div/ul[1]/li/a').text != name + "\n" + "arrow_drop_down")
    raise "Error"
  end
  page.has_text?(tittle)
end