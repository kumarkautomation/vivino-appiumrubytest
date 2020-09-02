### Features

- Screenshots on failure
- Logger
- Retry on failure  
- Allure report
- Cucumber JSON report
- Cucumber feature - cucumber - step-definition


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