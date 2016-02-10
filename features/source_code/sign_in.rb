class Signin
  def initialize(driver)
    @driver = driver
  end

  #Login method
  def login(username, password)
    @driver.find_element(:name, "userName").send_keys(username)
    @driver.find_element(:name, "password").send_keys(password)
    @driver.find_element(:name, "login").click
  end

  def login_with(record)
    @data_record = YAML.load(File.read("C:/Users/trainer/RubymineProjects/Cucumber_Batch3/features/data/data.yml"))
    @driver.find_element(:name, "userName").send_keys(@data_record["#{record}"]["username"])
    @driver.find_element(:name, "password").send_keys(@data_record["#{record}"]["password"])
    @driver.find_element(:name, "login").click
  end

end