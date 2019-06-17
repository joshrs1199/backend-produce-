class ApplicationController < ActionController::API

  def get_auth_header
    request.headers['Authorization']
  end

  def decode_token
    begin
      JWT.decode(get_auth_header, 'super_key')[0]['user_id']
    rescue
      nil
    end
  end

  

  def find_current_user
    User.find_by(id: decode_token)
  end

end
