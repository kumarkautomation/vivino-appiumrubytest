module MOBILE

  def logs_cleaner
    Dir.mkdir("./logs") unless File.exist?("./logs")
    Dir["./logs/*.log"].map {|junk_file| File.delete(junk_file)}
  end

  def element(element_name, locator, error=true)
    send(:define_method, element_name) do
      wait = Selenium::WebDriver::Wait.new(:timeout => 0.5)
      begin
        wait.until { @driver.find_element(locator) }
      rescue Selenium::WebDriver::Error::TimeOutError
        if error
          raise "Could not find element using '#{locator.first.key}=#{locator.first.key}' strategy"
        else
          return false
        end
      end
    end
  end

  def elements(element_name, locator, error=false)
    send(:define_method, element_name) do
      wait = Selenium::WebDriver::Wait.new(:timeout => 0.5)
      begin
        wait.until { !@driver.find_elements(locator).empty? }
        @driver.find_elements(locator)
      rescue Selenium::WebDriver::Error::TimeOutError
        if error
          raise "Could not find any elements using '#{locator.first.key}=#{locator.first.key}' strategy"
        else
          return []
        end
      end
    end
  end

end