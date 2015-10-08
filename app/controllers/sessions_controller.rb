class SessionsController < ApplicationController
  def new
 
  end
  def index
    render text: request.env['omniauth.auth'].to_yaml
  end
end
