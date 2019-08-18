class CartScreen
    def initialize
        @added_item = Elements.new(:id, 'bag_iv')
        @delete_item_button = Elements.new(:id, 'bag_minus')
        @confirm_delete = Elements.new(:xpath, '//*[@resource-id="android:id/button1"]')
        @empty_cart = Elements.new(:id, 'go_shopping_bt')
      
       
    end

    def item_is_added
        sleep (2)
        @added_item.isVisible
    end

    def delete_item_from_my_cart
        @delete_item_button.click
        sleep (2)
        @confirm_delete.click
    end

    def validate_empty_cart
        @empty_cart.isVisible
    end
end
  