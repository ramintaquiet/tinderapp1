class FavoController < ApplicationController
  before_action :authenticate_user!
  
  def update

    favo = Favo.where(pet: Pet.find(params[:pet]), user: current_user)
    if favo == []
#create the favo
Favo.create(pet: Pet.find(params[:pet]), user:current_user)
@favo_exists = true
    else
#delete the fav
favo.destroy_all
@favo_exists = true
    end

    respond_to do |format|
      format.html {  }
      format.js {}

    end
  end
end
