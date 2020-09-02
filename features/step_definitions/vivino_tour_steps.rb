
When(/^I navigate through tour screens$/) do
  home = VivinoHomeScreen.new(@driver, @data)

  home.how_it_works.click
  1..6.times {home.tour_next.click}
end

Then(/^I validate tour screens$/) do
  home = VivinoHomeScreen.new(@driver, @data)

  expect(home.try_us_out.displayed?).to be(true)
end