class Application

  def call(env)
    time = Time.new
    resp = Rack::Response.new
  

    local = time.hour - 6
    if local >= 12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end
      resp.finish
  end



end
