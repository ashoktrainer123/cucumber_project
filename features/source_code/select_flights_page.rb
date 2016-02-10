class Selectflights
  def initialize(driver)
    @driver = driver
  end

  #Validate that I am on next page
  def verify_page
  wait = Selenium::WebDriver::Wait.new(:timeout => 10) # seconds
  wait.until { @driver.find_element(:name => "reserveFlights") }
    if @driver.title == "Select a Flight: Mercury Tours"
      puts "Test Passed"
    else
      raise "Test Failed. Invalid Page Title!"
    end
  end
end