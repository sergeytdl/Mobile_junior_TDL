class ItemScreen
    def initialize
        @first_item = Elements.new(:xpath,'//android.widget.FrameLayout[1]/android.widget.LinearLayout/android.view.ViewGroup/android.widget.ImageView')
        @my_item = Elements.new(:id, 'com.zzkko:id/shop_detail_desc_text')
        @non_default_color = Elements.new(:xpath, '//*[@resource-id="com.zzkko:id/color_recyclerView"]/*[2]')
        @non_default_size = Elements.new(:xpath, '//*[@resource-id="com.zzkko:id/recycler_view"]/*[2]')
        @add_to_cart_button = Elements.new(:id, 'shop_detail_buy')
        @my_cart_icon = Elements.new(:id, 'shopbag_view')
    end

    def open_first_item
        @first_item.click
    end

    def correct_item_displayed
        @my_item.wait_to_be_visible
        unless @my_item.get_text.include?('Pinkk') || @my_item.get_text.include?('Tee')
            raise "Selected item is not correct!"
        end
    end

    def color_and_size
        @non_default_color.click
        @non_default_size.click
    end

    def add_to_my_cart
        @add_to_cart_button.click
    end

    def open_my_cart
        @my_cart_icon.click
    end
end