And (/^I choose color and size$/) do
    @screens.item_screen.color_and_size
    sleep (1)
end

And (/^I add the item to the cart$/) do
    @screens.item_screen.add_to_my_cart
    sleep (1)
end

And (/^I open my cart$/) do
    @screens.item_screen.open_my_cart
    sleep (1)
end


And (/^I validate that item was added$/) do
    @screens.cart_screen.item_is_added
    sleep (1)
end