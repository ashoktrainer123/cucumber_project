class Flightfinder
  def initialize(driver)
    @driver = driver
  end

  def verify_page
    if @driver.title == "Find a Flight: Mercury Tours:"
      puts "Test Passed"
    else
      @driver.save_screenshot("C:/Users/trainer/RubymineProjects/Cucumber_Batch3/features/screenshots/screen1.png")
      fail("Test Failed! Invalid Page Title!")
    end
  end

  def complete_flight_finder_info(record)
    @data_record = YAML.load(File.read("C:/Users/trainer/RubymineProjects/Cucumber_Batch3/features/data/data.yml"))
    select_trip_type(@data_record["#{record}"]["trip_type"])
    select_no_of_passengers(@data_record["#{record}"]["no_of_passengers"])
    select_depart_city(@data_record["#{record}"]["depart_city"])
    select_depart_month(@data_record["#{record}"]["depart_month"])
    depart_day(@data_record["#{record}"]["depart_day"])
    arrival_city(@data_record["#{record}"]["arrival_city"])
    select_return_mnth(@data_record["#{record}"]["return_month"])
    select_return_day(@data_record["#{record}"]["return_day"])
    select_service_class(@data_record["#{record}"]["service_class"])
    select_continue_btn
  end

  #
  # #Select the trip type
  def select_trip_type(type)
    trip_type_button = @driver.find_element(:xpath, "//input[@value='#{type}']")
    #trip_type_button = @driver.find_element(:css, "input[value='oneway']")
    trip_type_button.click
  end


   #Select no of passengers
  def select_no_of_passengers(no)
    passenger_dropdown = @driver.find_element(:name, "passCount")
    passenger_dropdown_options = passenger_dropdown.find_elements(:tag_name, 'option')
    passenger_dropdown_options.each { |option| option.click if option.text == "#{no}"}
  end

  # # #Select Departing city
  def select_depart_city(city)
    depart_city_dropdown = @driver.find_element(:name, "fromPort")
    depart_city_options = depart_city_dropdown.find_elements(:tag_name, 'option')
    depart_city_options.each { |option| option.click if option.text == "#{city}" }
  end

  # # #Select Departing month
  def select_depart_month(month)
    depart_month_dropdown = @driver.find_element(:name, "fromMonth")
    depart_month_options = depart_month_dropdown.find_elements(:tag_name, 'option')
    depart_month_options.each { |option| option.click if option.text == "#{month}"}
  end

  # # #Select Departing day
  def depart_day(day)
  depart_day_dropdown = @driver.find_element(:name, "fromDay")
  depart_day_options = depart_day_dropdown.find_elements(:tag_name, 'option')
  depart_day_options.each { |option| option.click if option.text == "#{day}"}
  end

  # # #Select Arrival city
  def arrival_city(city)
  arrival_city_dropdown = @driver.find_element(:name, "toPort")
  arrival_city_options = arrival_city_dropdown.find_elements(:tag_name, 'option')

  arrival_city_options.each { |option| option.click if option.text == "#{city}"}
  end

  # # #Select Return Month
  def select_return_mnth(month)
  return_month_dropdown = @driver.find_element(:name, "toMonth")
  return_month_options = return_month_dropdown.find_elements(:tag_name, 'option')
  return_month_options.each { |option| option.click if option.text == "#{month}"}
  end

  # # #Select Return Day
  def select_return_day(day)
  return_day_dropdown = @driver.find_element(:name, "toDay")
  return_day_options = return_day_dropdown.find_elements(:tag_name, 'option')
  return_day_options.each { |option| option.click if option.text == "#{day}" }
  end
  #
  # #Select Service Class
  def select_service_class(serv_class)
  service_class_radio_btn = @driver.find_element(:xpath, "//input[@value = '#{serv_class}']")
  service_class_radio_btn.click
  end

  # #Select Continue Button
  def select_continue_btn
  continue_btn = @driver.find_element(:name, "findFlights")
  continue_btn.click
  end


end