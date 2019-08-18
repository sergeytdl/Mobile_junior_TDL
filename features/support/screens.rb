class Screens
  def home_screen
    @home_screen ||= HomeScreen.new
    @home_screen
  end

  def me_screen
    @me_screen ||= MeScreen.new
    @me_screen
  end

  def item_screen
    @item_screen ||= ItemScreen.new
    @item_screen
  end

  def cart_screen
    @cart_screen ||= CartScreen.new
    @cart_screen
  end
  
end
  