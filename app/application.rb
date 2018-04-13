class Application

  def call(env)
    time = Time.new
    resp = Rack::Response.new
    resp.write time.localtime.hour


    if time.localtime.hour >= 12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end
      resp.finish
  end



end
