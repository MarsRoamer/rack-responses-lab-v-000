class Application

  def call(env)
    time = Time.new
    resp = Rack::Response.new
    resp.write "#{time.hour}:#{time.min}"
  
    resp.write time.hour
    if time.hour >= 12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end
      resp.finish
  end



end
