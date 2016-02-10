Then /Select Flights Page is displayed/ do
  select_flight_page = Selectflights.new(@driver)
  select_flight_page.verify_page
end