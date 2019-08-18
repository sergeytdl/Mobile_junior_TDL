class SearchScreen
    def initialize
        @first_item = Elements.new(:xpath,'//android.widget.FrameLayout[1]/android.widget.LinearLayout/android.view.ViewGroup/android.widget.ImageView')
        @my_item = Elements.new(:id, 'com.zzkko:id/shop_detail_desc_text')
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


end