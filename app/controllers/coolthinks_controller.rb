class CoolthinksController < ApplicationController
def create
  @Coolthink = Coolthink.new(params[:coolthink])
  @Coolthink.userid = current_user.id
 
  if @Coolthink.save
      redirect_to current_user 
  else
      flash[:error] = "Problem!"
      redirect_to current_user
  end
end
end
