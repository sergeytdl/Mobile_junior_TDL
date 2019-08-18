Given(/^I am on the main screen$/) do
  @screens.home_screen.close_coupon_pop_up_window
  @screens.home_screen.home_logo_visibility
end

When(/^I open Me part$/) do
@screens.home_screen.open_me_screen
end

And(/^I choose Log in part$/) do
  @screens.me_screen.choose_log_in_part
end

And(/^I fullfill all required fields and checkboxes$/) do
  @screens.me_screen.fulfill_required_fields
  @screens.me_screen.click_login_or_register
end


And(/^I finish the registration$/) do
  @screens.me_screen.confirm_currency
end