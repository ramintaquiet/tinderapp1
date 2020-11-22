class ProfileController < ApplicationController
  
  before_action :authenticate_user!
  
  def update

    profile = Profile.where(prof2: Prof2.find(params[:prof2]), user: current_user)
    if profile == []
#create the favo
Profile.create(prof2: Prof2.find(params[:prof2]), user:current_user)
@p_exists = true
    else
#delete the fav
profile.destroy_all
@p_exists = false
    end

    respond_to do |format|
      format.html {  }
      format.js {}

    end
  end
end
