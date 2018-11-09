class UsersController < ApplicationController 

  set_headers(tokens)
  render json: { status: 'Signed in successfully with google'}

  private                                            
  def set_headers(tokens)
    headers['access-token'] = (tokens['access-token']).to_s
    headers['client'] =  (tokens['client']).to_s
    headers['expiry'] =  (tokens['expiry']).to_s
    headers['uid'] =@user.uid             
    headers['token-type'] = (tokens['token-type']).to_s                                                 
  end
end