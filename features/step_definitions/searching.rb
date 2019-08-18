Given(/^I go to “Shop” tab$/) do
    @screens.me_screen.go_shopping
    @screens.home_screen.open_search_page
end

When(/^I search for an item "(.*)"$/) do |input|
    @last_search_input = input
    @screens.home_screen.search_the_item(input)
end

And (/^I open the first item in the list$/) do
    @screens.item_screen.open_first_item
    sleep (3)
end

Then (/^The item is opened$/) do 
# @screens.item_screen.correct_item_displayed
first_option = get_element(:xpath, '//*[@resource-id="com.zzkko:id/tv_name"]')
  search_keywords = @last_search_input.split(" ")
  error_list = []
  search_keywords.each do |keyword|
    begin
      text = first_option.find_element(:xpath, "//*[contains(@text,'#{keyword}')]").text
      p "Found keyword: '#{keyword}', --- Full title text: '#{text}'"
    rescue => e
      error_list << "Keyword '#{keyword}' was not found in the title"
      error_list << e
    end
  end

  raise error_list.to_s unless error_list.empty?
end





# error_list = []
#   search_options = $driver.find_element(:xpath, '//*[@resource-id="com.zzkko:id/tv_name"]/*')
#   counter = 1
#   search_options do |option|
#     begin
#       p option.find_element(:xpath, "//*[contains(@text,'#{input}')]").text
#     rescue => e
#       error_list << "Element #{counter} does not have text '#{input}'"
#       error_list << e
#     end
#     counter += 1
#   end
#   raise error_list.to_s unless error_list.empty?
# end


