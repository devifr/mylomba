class ControlsController < ApplicationController
    	before_filter :authenticate_user!, :except => [:index]
  def index
  	@control = Control.all
  end

  def new
  	@control = Control.new
  	@user = User.all 
  end

  def create
	@control = Control.new(params[:control][:berhasil])
	if @control.save
		flash[:notice] = "Create new Article Successfully"
		redirect_to :action => :index
	else
		render :action => :new
	end  	
  end
end
