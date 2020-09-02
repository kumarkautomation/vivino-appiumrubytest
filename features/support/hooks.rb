Before do |scenario|
  setup

  caps = Appium.load_appium_txt file: File.dirname(__FILE__) + "/appium.txt", verbose: true
  Appium::Driver.new(caps)
  Appium.promote_appium_methods Object

  $logger.debug("starting appium driver...") if $logger
  driver.start_driver
  driver.set_wait(TWENTY_SECONDS)
end

After do |scenario|
  if scenario.failed?
    $logger.debug("scenario: #{scenario} FAILED") if $logger
    begin
      Dir.mkdir("./reports/screenshots") unless Dir.exists?("./reports/screenshots")
      file = "#{scenario.name.gsub(" ","_").gsub(/[^0-9A-Za-z_]/, "")}.png"
      driver.save_screenshot("./reports/screenshots/#{file}")
    rescue
      p "*** Could not take failed scenario screenshot ***"
    end
  end
  driver.driver_quit
end

at_exit do
  ENV['TITLE'] = "TEST AUTOMATION REPORT" if ENV['TITLE'].nil?
  begin
    report_file = File.absolute_path("report.html", "reports")
    doc = File.read(report_file)
  rescue
    report_file = File.absolute_path("test_report.html", "reports")
    doc = File.read(report_file)
  end
  new_doc = doc.sub("Cucumber Features", "#{ENV['TITLE']}")
  File.open(report_file, "w") {|file| file.puts new_doc}
end

def driver
  $driver
end

def setup
  # file logs
  logs if ENV['LOGGER'] && ENV['LOGGER'].upcase == "ON"

  # Load test data into @data variable
  @data = YAML.load_file(File.dirname(__FILE__) + "/../../data/config.yml")
end
