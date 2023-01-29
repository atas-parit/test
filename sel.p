from selenium import webdriver
import time

np = "4444"

print("Test Execution Started")

options = webdriver.ChromeOptions()
options.add_argument('--ignore-ssl-errors=yes')
options.add_argument('--ignore-certificate-errors')
driver = webdriver.Remote(
command_executor='http://localhost:' + str(np) + '/wd/hub',
options=options
)

driver.get("https://argh.pages.dev/")
time.sleep(300)
driver.close()
print("Test Execution Successfully Completed!")
