  When("I select the Eventos button on the menu") do
     find(:xpath, '//*[@id="nav-mobile"]/li[1]/a').click
  end
    
  When("I click on the {string} button from the menu") do |string|
    find('a', text: string).click
  end
  
  When("I select {string} semester") do |string|
    find(:xpath, '//*[@id="event_form"]/div[1]/div[1]/div/input').click
    find('span', text: string).click
  end
  
  When("select the year {string}") do |string|
    find(:xpath, '//*[@id="event_form"]/div[1]/div[2]/div/input').click
    find('span', text: string).click
  end
  
  When("fill {string} on Nombre del evento field") do |string|
    fill_in('event[name]', :with => string)    
  end
  
  When("select the career {string} on the Carrera field") do |string|
    find(:xpath, '//*[@id="event_form"]/div[2]/div[2]/div/input').click
    find('span', text: string).click  
  end
  
  When("fill reception limit date with {string}") do |string|
    fill_in('event[limit_date]', :with => string)   
  end
  
  Then("the event {string} I just created is listed") do |string|
    page.has_text?(string)
  end
  