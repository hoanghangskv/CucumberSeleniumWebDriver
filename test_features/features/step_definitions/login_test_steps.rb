Given('Login page was opened successfully') do
    @driver = Selenium::WebDriver.for :chrome
    @driver.get('http://the-internet.herokuapp.com/login')
    @driver.manage.window.resize_to(1366, 741)
    # @driver.quit
end
  
When('user enter invalid username {string} and password {string}') do |string, string2|
    @driver.find_element(:id, 'username').click
    @driver.find_element(:id, 'username').send_keys(string)
    @driver.find_element(:id, 'password').click
    @driver.find_element(:id, 'password').send_keys(string2)
    @driver.find_element(:css, '.fa').click
end
  
Then('The login result is unsuccessful and displays the message {string}') do |string|
    # expect(@driver.text).to eq(string)
    expect(@driver.find_element(:id, 'flash').text).to include('Your username is invalid!')
    @driver.close
end
  
When('Enter the correct password and username') do
    @driver.find_element(:id, 'username').click
    @driver.find_element(:id, 'username').send_keys('tomsmith')
    @driver.find_element(:id, 'password').click
    @driver.find_element(:id, 'password').send_keys('SuperSecretPassword!')
    @driver.find_element(:css, '.radius').click
end
  
Then('Successful login result and display the message {string}') do |string|
    # expect(@driver.text).to eq(string)
    expect(@driver.find_element(:id, 'flash').text).to include('You logged into a secure area!')
    @driver.close

end