Given("I am in the application page") do
    visit ('http://docs-academicos.herokuapp.com/users/sign_in')
end

When(/^I will click the "([^"]*)" link$/) do |documentsLink|
  click_link(documentsLink)
end

Then (/^I should see the header "([^"]*)"$/) do |headerName|
  page.find('th', text: headerName)
end

When (/^I will search "([^"]*)" row$/) do |columnName|
  page.find('td', text: columnName)
end

When (/^I will click the create form button$/) do
  find(:xpath, '/html/body/div[1]/table/tbody/tr[4]/td[6]/a').click
end

When (/^I will see the tittle "([^"]*)"$/) do |titleName|
  find("h3", :text => titleName)
end

Then (/^I should see the tittle "([^"]*)"$/) do |titleName|
  find("h3", :text => titleName)
end

Then (/I should see the confirmation creation review form$/) do
  if(find('#confirmation-modal').native.css_value('display') != 'block')
    raise "Error"
  end
end