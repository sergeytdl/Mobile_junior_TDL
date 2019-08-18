class HomeScreen
    def initialize
        @home_logo = Elements.new(:id,'appLogoView')
        @coupon1_pop_up_window = Elements.new(:id,'cimg_close')
        @coupon2_pop_up_window = Elements.new(:id,'iv_close')
        @me_button = Elements.new(:id,'main_nav_me')
        @search_field_button = Elements.new(:id, 'mainSearchMenu')
        @search_inputfield = Elements.new(:id,'tv_searchbar_box')
        @search_button = Elements.new(:id,'btn_searchbar_search')
    end

    def home_logo_visibility
        sleep (4)
        @home_logo.isDisplayed
    end


    def close_coupon_pop_up_window
        @coupon1_pop_up_window.click_if_visible
        @coupon2_pop_up_window.click_if_visible
    end
    
    def open_me_screen
        # $driver.close_app
        # `adb shell am start -n com.zzkko/com.zzkko.bussiness.login.ui.WelcomeActivity`
        # sleep(2)
        # @coupon1_pop_up_window.click_if_visible
        # @coupon2_pop_up_window.click_if_visible
        @me_button.click
        sleep (2)
    end
   
    def open_search_page
        @search_field_button.click
        sleep (1)
    end

    def search_the_item(input)
        @search_inputfield.click
        @search_inputfield.set(input)
        @search_button.click

    end
end
  