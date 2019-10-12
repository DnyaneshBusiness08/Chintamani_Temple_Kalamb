class ReportsController < ApplicationController
	def index

		if params[:search].present?
		  items = JSON.parse(params[:search].gsub('=>', ':'))
		  @search = Reciept.search(items)
		else
		  @search = Reciept.search(params[:q])
		end
		
	    @reciepts = @search.result.order(id: :desc)
	 
	    respond_to do |format|
	      format.html
	      format.json
	      format.pdf {render pdf: 'Reciepts'}
	    end
	    
	end
    

	# def search
	#     index
	#     render :index 
 #    end
# def search
#       index
#       render :template => 'reports/index'
#   end
   

end

