Then /Flight Finder page is displayed/ do
  #Create an object for Flight finder page
  flight_finder_page = Flightfinder.new(@driver)
  flight_finder_page.verify_page
end

When /I complete the Flight Information using the (.*) data/ do |record|
  flight_finder_page = Flightfinder.new(@driver)
  flight_finder_page.complete_flight_finder_info(record)
end