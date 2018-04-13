class Application

  def call(env)
    time = Time.new
    resp = Rack::Response.new
    resp.write "#{time.hour}:#{time.min}"
    resp.finish

    if time.hour >= 12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end
  end



end
