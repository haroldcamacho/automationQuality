When("I click on {string} from the navbar") do |string|
    find(:xpath, '/html/body/nav/div/div/ul[2]/li[2]/a').click
end
  
When("click on {string} from the drop menu") do |string|
    find(:xpath, '/html/body/nav/div/div/ul[2]/li[2]/ul/li[2]/a').click
end
  
Then("I should be redirected to the {string} window") do |string|
    page.has_text?(string)
end
Then("I will stay at {string} page") do |string|
    page.has_text?(string)
end