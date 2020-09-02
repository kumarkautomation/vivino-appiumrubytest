class VivinoHomeScreen

  # common
  element :home_image, {:id => "vivino.web.app.beta:id/view_images"}
  element :get_started, {:id => "vivino.web.app.beta:id/getstarted_layout"}
  element :how_it_works, {:id => "vivino.web.app.beta:id/seehowitwork"}
  element :tour_next, {:id => "vivino.web.app.beta:id/next"}
  element :try_us_out, {:id => "vivino.web.app.beta:id/txtTryUsOut"}

  def initialize(driver, data)
    @driver = driver
    @data = data
  end

end