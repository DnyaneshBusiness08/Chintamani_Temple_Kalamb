class UsersController < ApplicationController
    
    before_action :authorize_admin

    def index
    	@users = User.where.not(id: current_user.id)


    end

    def new
    	@user = User.new
    end

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to users_admin_index_path
		else
			render :new
		end
	end

	def destroy
		 User.find(params[:id]).destroy
	    
	    redirect_to users_admin_index_url
	    
    end


	def authorize_admin
		redirect_to root_path, alert: 'Access Denied' unless current_user.admin?
	end

	private

	def user_params
		params.require(:user).permit(:email, :password, :password_confirmation)
	end



end
