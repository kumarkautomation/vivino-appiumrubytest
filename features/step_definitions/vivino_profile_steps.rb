
And(/^I navigate to profile screen$/) do
  home = VivinoHomeScreen.new(@driver, @data)

  home.try_us_out.click
end