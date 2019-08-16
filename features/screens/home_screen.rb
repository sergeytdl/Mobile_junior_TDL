class HomeScreen
    def initialize
        @home_logo = Elements.new(:id,'com.zzkko:id/appLogoView')
        @coupon1_pop_up_window = Elements.new(:id,'com.zzkko:id/img_close')
        @coupon2_pop_up_window = Elements.new(:id,'com.zzkko:id/iv_close')
        @me_button = Elements.new(:id,'com.zzkko:id/main_nav_me')
    end

    def home_logo_visibility
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
   
end
  