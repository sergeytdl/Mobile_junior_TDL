class Elements
  def initialize(type,value)
    @type = type
    @value = value
  end

  def find_element(wait_time: 5)
    error = nil
    start = Time.now
    while (Time.now - start) < wait_time
      begin
        el = $driver.find_element(@type, @value)
        return el
      rescue => e
        error = e
        p "Retry, #{@type}:#{@value}"
      end
      sleep(0.1)
    end
    raise "Element #{@type}:#{@value} was not found. #{e}"
  end


  def element_visible(wait_time: 5)
    error = nil
    start = Time.now
    while (Time.now - start) < wait_time
      begin
        el = $driver.find_element(@type, @value)
        return true
      rescue => e
        error = e
        p "Retry, #{@type}:#{@value}"
      end
      sleep(0.1)
    end
    return false
  end


  def click_if_visible
    if element_visible
      el = find_element
      el.click
    end
  end


  def get_text
    el = find_element
    el.text
  end

  def set(text)
    el = find_element
    el.send_keys(text)
  end





  def scroll_to_element
    window_hash = get_window_sizes
    exception = ""
    start = Time.now
    while (Time.now - start) < 5
      begin
        el = wait_to_be_visible(default_wait_time: 2)
        return el
      rescue => e
        exception = e
        p "--scrolling down, #{@type}: #{@value}"
        scroll_down(window_hash)
        sleep(0.1)
      end
    end
  end

  def scroll_down(window_hash)
    $driver.swipe(start_x: window_hash[:middle], start_y: window_hash[:from], end_x: window_hash[:middle], end_y: window_hash[:to], duration: window_hash[:duration])
  end

  def get_window_sizes
    window = $driver.window_size
    sizes = {
      width: window.width,
      height: window.height,
      from: window.height - (window.height / 4),
      to: window.height / 4,
      middle: window.width / 2,
      duration: 1500
    }
    return sizes
  end


  def isVisible(default_wait_time: 5)
    start = Time.now
    while (Time.now - start) < default_wait_time
      begin
        el = $driver.find_element(@type, @value)
        return true
      rescue => e
        exception = e
        return false
        sleep(0.1)
      end
    end
  end

  def wait_to_be_visible(default_wait_time: 5)
    exception = ""
    start = Time.now
    while (Time.now - start) < default_wait_time
      begin
        el = $driver.find_element(@type, @value)
        return el
      rescue => e
        exception = e
        p "again, #{@value}"
        sleep(0.1)
      end
    end
    raise "Element #{@value} is not visible after #{default_wait_time} seconds \n Exception: #{exception}"
  end

  def get_element(type, value)
    exception = ""
    start = Time.now
    while (Time.now - start) < wait
      begin
        el = $driver.find_element(type, value)
        return el
      rescue => e
        exception = e
        p "again, #{type} -- #{value}"
        sleep(0.1)
      end
    end
    raise "Element #{type} -- #{value} is not visible after #{wait} seconds \n Exception: #{exception}"
  end

  def click
    el = find_element
    el.click
  end
end
