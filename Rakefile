require 'cucumber/rake/task'

Cucumber::Rake::Task.new(:spec) do |features|
	features.cucumber_opts = "features/scenarios/**/** --format html --out=reports/test_report.html --tags '@tour' --tags '@profile' -o reports/cucumber.json LOGGER=ON"
end

Cucumber::Rake::Task.new(:allure) do |features|
	features.cucumber_opts = "features/scenarios/**/** -p allure"
end