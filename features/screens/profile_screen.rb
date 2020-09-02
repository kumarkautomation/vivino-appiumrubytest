class VivinoProfileScreen

  # common
  element :profile_image, {:id => "vivino.web.app.beta:id/profile_image"}
  element :my_wines, {:id => "vivino.web.app.beta:id/my_wines"}
  element :ratings, {:id => "vivino.web.app.beta:id/ratings"}
  element :wishlist, {:id => "vivino.web.app.beta:id/wishlist"}
  element :cellar, {:id => "vivino.web.app.beta:id/cellar"}

  def initialize(driver, data)
    @driver = driver
    @data = data
  end

end