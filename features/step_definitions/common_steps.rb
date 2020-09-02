Then(/^I verify the vivino "([^"]*)" screen$/) do |screen|
  home = VivinoHomeScreen.new(@driver, @data)
  profile = VivinoProfileScreen.new(@driver, @data)

  case screen
  when 'home'
    expect(home.home_image.displayed?).to be(true)
    expect(home.get_started.displayed?).to be(true)
    expect(home.how_it_works.displayed?).to be(true)
  when 'profile'
    expect(profile.profile_image.displayed?).to be(true)
    expect(profile.my_wines.displayed?).to be(true)
    expect(profile.ratings.displayed?).to be(true)
    expect(profile.wishlist.displayed?).to be(true)
    expect(profile.cellar.displayed?).to be(true)
  end
end
