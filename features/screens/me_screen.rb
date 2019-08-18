class MeScreen
    def initialize
        @log_in_part = Elements.new(:id,'textView35')
        @email_inputfield = Elements.new(:id,'email_edt')
        @password_inputfield = Elements.new(:id,'pwdEdtTxt')
        @privacy_policy_checkbox = Elements.new(:id,'chbox_privacy_policy')
        @login_or_register_button = Elements.new(:id,'login_or_register_button')
        @confirm_currency_button = Elements.new(:xpath, '//android.widget.TextView[@text="Go shopping"]')
        @log_in_tab = Elements.new(:xpath, '//android.widget.TextView[@text="LOG IN"]')
        @my_name = Elements.new(:xpath, '//android.widget.TextView[@text="sergtest"]')
        @shop_button = Elements.new(:id,'com.zzkko:id/main_nav_shop')
    end
    

    def choose_log_in_part
        @log_in_part.click

    end

    def fulfill_required_fields
        random = (Random.rand(1000..9999)).to_s
        @email_inputfield.set("bla-bla#{random}@bla-bla.com")
        @password_inputfield.set("bhjghfgc#{random}")
        @privacy_policy_checkbox.click
        
    end

    def click_login_or_register
        @login_or_register_button.click
       
    end

    def confirm_currency
        @confirm_currency_button.click
       
    end

    def open_log_in_page
        @log_in_tab.click
    end


    def enter_login_data
        @email_inputfield.set('sergtest@inbox.lv')
        @password_inputfield.set("pagaiduparole1")
        @login_or_register_button.click
    end

    def my_name_displayed
        @my_name.wait_to_be_visible
    end

    def go_shopping
        @shop_button.click
    end

end