And (/^I remove the item$/) do
    @screens.cart_screen.delete_item_from_my_cart
    sleep (1)
end

Then (/^I validate that the bag is empty$/) do
    @screens.cart_screen.validate_empty_cart
    sleep (1)
end