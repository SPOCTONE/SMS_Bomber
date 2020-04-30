#!/usr/bin/env ruby

require "selenium-webdriver"

driver = Selenium::WebDriver.for :chrome
driver.navigate.to "https://www.flipkart.com/account/login?ret =/"

f=10 #currently the limit is 10

until f==0 do
     driver.navigate.to "https://www.flipkart.com/account/login?ret =/"
     number = driver.find_element(:class,'_2zrpKA') 
     number.send_keys "" #type your phone number between the quotation marks    
     forgot = driver.find_element(:link_text,'Forgot?') 
     forgot.click
     sleep(5)
     f-=1
end

driver.quit 