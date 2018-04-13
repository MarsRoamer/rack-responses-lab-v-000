class Application

  def call(env)
    time = Time.new
    resp = Rack::Response.new
    resp.write "#{time.hour}:#{time.min}"
    resp.finish
  end



end
