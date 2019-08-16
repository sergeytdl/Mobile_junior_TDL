And(/^I select sign in tab$/) do
    @screens.me_screen.open_log_in_page
end

And(/^I enter login data$/) do
    @screens.me_screen.enter_login_data
    sleep (2)
end

And(/^I'm logged in$/) do 
    @screens.me_screen.my_name_displayed
    # first_option = get_element(:xpath, '//*[@resource-id="com.zzkko:id/textView35"]/*')
    # search_keywords = @last_search_input.split(" ")
    # error_list = []
    # search_keywords.each do |keyword|
    #     begin
    #     text = first_option.find_element(:xpath, "//*[contains(@text,'#{keyword}')]").text
    #     p "Found keyword: '#{keyword}', --- Full title text: '#{text}'"
    #     rescue => e
    #     error_list << "Keyword '#{keyword}' was not found in the title"
    #     error_list << e
    #     end
    # end
end