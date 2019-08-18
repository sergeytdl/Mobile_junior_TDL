class Screens
  def home_screen
    @home_screen ||= HomeScreen.new
    @home_screen
  end

  def me_screen
    @me_screen ||= MeScreen.new
    @me_screen
  end

  def search_screen
    @search_screen ||= SearchScreen.new
    @search_screen
  end
  
end
  