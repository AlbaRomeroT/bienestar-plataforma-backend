# Bienestar_aut_demp
Automation Testing Project for Bolivar's project

Environment Variable | Description
--- | --- 
AWS_ENV | Defines the environment to hit during the testing
AWS_ENV2 | Defines the environment to hit during the testing
AWS_APP_NAME | It is the app name given during the infrastructure deployment
SERVICE_URL | API Gateway Base Url to consume the services
APIGATEWAY_OUTPUT_ENABLED | Use *true* as a value for this environment variable if you don't know the Service URL to assign but make sure you have executed the **Service URL Discover Command** Describe in this document before to execute this project

###Service URL Discover Command
    npm run apigateway-output

### Sample Poject Execution
#### Example #1
Use this example if you already know the right values for the SERVICE_URL.

Environment Variable | Valor
--- | --- 
SERVICE_URL | https://gkdcxwo8dj.execute-api.sa-east-1.amazonaws.com/aut

**NOTE:** Values for the environment variables above might change depending on the last deployment executed in you infrastructure or the environment you want to hit during the testing
  
    npm run test

#### Example #2
Use this example if you don't know the values for the APIKEY and SERVICE_URL and you want to auto discover them.

Environment Variable | Valor
--- | --- 
APIGATEWAY_OUTPUT_ENABLED | "true" 
AWS_APP_NAME | "bienestar" 
AWS_ENV | "aut"
AWS_ENV2 | "auth"
  
**NOTE:** Values for the environment variables AWS_APP_NAME or AWS_ENV might change depending on the environment you want to hit during the testing

    npm run test
