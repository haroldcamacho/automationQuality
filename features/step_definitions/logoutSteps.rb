Given(/^I entered my username "([^"]*)"$/) do |valueToUsername|
    fill_in('user[login]',:with => valueToUsername).native.send_keys(:return)
end

Given(/^I entered my password "([^"]*)"$/) do |valueToPassword|
    fill_in('user[password]',:with => valueToPassword).native.send_keys(:return)
end

Given(/^I was redirected to the "([^"]*)" page, with name "([^"]*)"$/) do |tittle, name|
    if (find(:xpath, '/html/body/nav/div/div/ul[1]/li/a').text != name + "\n" + "arrow_drop_down")
      raise "Error"
    end
    page.has_text?(tittle)
end
Then(/^I will click in my name link$/) do
    find(:xpath, '/html/body/nav/div/div/ul[1]/li/a').click
    
    ##acabar
end