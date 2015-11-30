class AuthController < ApplicationController
  def callback
    case auth_hash['provider']
    when 'cronofy'
      user = User.find_or_create_by(cronofy_id: auth_hash['uid'])
      user.cronofy_access_token = auth_hash['credentials']['token']
      user.cronofy_refresh_token = auth_hash['credentials']['refresh_token']
      user.save

      flash[:success] = "Connected to your calendars"

      redirect_to :root
    end
  end

  def auth_hash
    request.env['omniauth.auth']
  end

end
