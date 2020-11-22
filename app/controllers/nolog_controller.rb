class NologController < ApplicationController

  
  def update

    nolog = Nolog.where(prof2: Nolog.find(params[:prof2]))
    if profile == []
#create the favo
Nolog.create(prof2: Prof2.find(params[:prof2]))
@n_exists = true
    else
#delete the fav
nolog.destroy_all
@n_exists = false
    end

    respond_to do |format|
      format.html {  }
      format.js {}

    end
  end
end

