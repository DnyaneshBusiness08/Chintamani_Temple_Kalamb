class ApplicationController < ActionController::Base
	 # before_action :authenticate_user!
 #    before_action :deny_to_visitors

 #    private

	# def deny_to_visitors
	#   redirect_to new_user_session_path unless user_signed_in? or admin_signed_in?
	# end
   # before_action :authenticate_admin!
   before_action :authenticate_user!
  
   

end