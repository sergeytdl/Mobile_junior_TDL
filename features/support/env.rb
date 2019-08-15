require 'appium_lib'

desired_capabilities = {
  'deviceName' => 'LGH990ac17dc31',
  'platformVersion' => "7.0",
  'platformName' => 'Android',
  "appPackage": "com.zzkko",
  "appActivity": "com.zzkko.bussiness.login.ui.WelcomeActivity",
  'noReset' => 'False'
}
p desired_capabilities

$driver = Appium::Driver.new(caps: desired_capabilities, appium_lib: { server_url: "http://localhost:4777/wd/hub" })

Before do |scenario|
  $driver.start_driver
  $driver.set_wait(0.1)
  @screens = Screens.new
end

After do |scenario|
  add_screenshot(scenario.name) if scenario.failed?
  $driver.driver_quit
end

def add_screenshot(scenario_name)
  scenario_name.tr!(" ", "_")
  local_name = "reports/screenshot-#{scenario_name}.png"
  $driver.screenshot(local_name)
  embed(local_name, 'image/png', "#{scenario_name}-SCREENSHOT")
end
