class Application

  def call(env)
    resp = Rack::Response.new
    resp.write "#{Time.hour}:#{Time.min}"
    resp.finish
  end



end
