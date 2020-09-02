### Features

- Screenshots on failure
- Logger
- Retry on failure  
- Allure report
- Cucumber JSON report
- Cucumber feature - cucumber - step-definition

##### Project Structure
# data 
- contains apk file
- config.yml file contains user credentials
# features 
- helpers 
  - wrapper methods (Logger , element,elements) 
- scenarios 
  - profile cucumber feature file 
  - tour cucumber feature file 
- screens 
    - home screen/page pageobjects 
    - profile screen/page pageobjects 
- step definitions 
    - common steps - for validation 
    - vivino profile steps 
    - vivino tour steps 
- support 
    - appium text file (reference of apk,emulator avd) 
    - driver config (logs) 
    - env.rb - (require dependency) 
    - hooks.rb - (setup and teardown method , logger and config yml)
# logs 
    - test logs
# reports 
    - allure and html reports
# cucumber.yml 
    - Profile (default and allure)
# gemfile 
    - dependency file
# rakefile 
    - scheduler for execution
### Test runner
> Rake runner
```bash
rake spec
```

> Allure report
```bash
rake allure
allure generate reports/allure-results-json/ --clean && allure open
```

> custom allure html output folder
```bash
allure generate reports/allure-results-json/ -o reports/allure-results-html --clean && allure open reports/allure-results-html/
```

### Logs
```bash
rake allure LOGGER=ON
```
