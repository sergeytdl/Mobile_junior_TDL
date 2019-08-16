class MeScreen
    def initialize
        @log_in_part = Elements.new(:id,'com.zzkko:id/textView35')
        @email_inputfield = Elements.new(:id,'com.zzkko:id/email_edt')
        @password_inputfield = Elements.new(:id,'com.zzkko:id/pwdEdtTxt')
        @privacy_policy_checkbox = Elements.new(:id,'com.zzkko:id/chbox_privacy_policy')
        @login_or_register_button = Elements.new(:id,'com.zzkko:id/login_or_register_button')
        @confirm_currency_button = Elements.new(:xpath, '/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.TextView[2]')
        @log_in_tab = Elements.new(:xpath, '/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ScrollView/android.widget.LinearLayout/android.view.ViewGroup/android.widget.HorizontalScrollView/android.widget.LinearLayout/android.support.v7.app.ActionBar.Tab[1]')
        @my_name = Elements.new(:xpath, '//android.widget.TextView[@text="sergtest"]')
        
    end

    def choose_log_in_part
        @log_in_part.click
        sleep (2)
    end

    def fulfill_required_fields
        random = (Random.rand(1000..9999)).to_s
        @email_inputfield.set("bla-bla#{random}@bla-bla.com")
        @password_inputfield.set("bhjghfgc#{random}")
        @privacy_policy_checkbox.click
        sleep (2)
    end

    def click_login_or_register
        @login_or_register_button.click
        sleep (2)
    end

    def confirm_currency
        @confirm_currency_button.click
        sleep (2)
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
end