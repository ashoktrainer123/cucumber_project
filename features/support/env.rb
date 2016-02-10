require 'selenium-webdriver'

#Starting the browser
Before do
  @driver = Selenium::WebDriver.for :firefox
  @driver.manage.window.maximize
end

#Close the browser
After do
  @driver.quit
end