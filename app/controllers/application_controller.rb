class ApplicationController < ActionController::Base
  def hello
    render html: "Hello Orbit!"
  end
end
