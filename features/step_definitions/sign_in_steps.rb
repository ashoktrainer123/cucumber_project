Given /I open the website in browser$/ do
  #@driver.go "http://newtours.demoaut.com/mercuryreservation.php"
  @driver.navigate.to "http://newtours.demoaut.com/mercuryreservation.php"
end

When(/^I login with (.*) username and (.*) password$/) do |username, password|
  #create an object for sign_in page
  sign_in_page = Signin.new(@driver)

  #Calling the login method from Signin class
  sign_in_page.login(username, password)
end

When(/I login loading data from (.*)/) do |record|
  #@data_record = YAML.load(File.read("C:/Users/trainer/RubymineProjects/Cucumber_Batch3/features/data/data.yml"))
  sign_in_page = Signin.new(@driver)
  sign_in_page.login_with(record)
end