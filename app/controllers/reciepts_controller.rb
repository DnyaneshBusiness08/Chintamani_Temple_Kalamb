class RecieptsController < ApplicationController
  
   before_action :set_reciept, only: [:show, :edit, :update, :destroy]
  
  
   
  def index
    @search = Reciept.search(params[:q])
    @reciepts = @search.result
    
    @reciepts = Reciept.all.order(id: :desc).paginate(:page => params[:page], :per_page => 5)
  end

  # def search
  #     index
  #     render :template => 'reports/index'
  # end

  def show
  end

  def new
    @reciept = Reciept.new
  end

  def edit
  end

  def create
    @reciept = Reciept.new(reciept_params)
     respond_to do |format|
      require 'uri'
      require 'net/http'
      if @reciept.save
        format.html { redirect_to @reciept, notice: 'Reciept was successfully created.' }
        format.json { render :show, status: :created, location: @reciept }
      else
        format.html { render :new }
        format.json { render json: @reciept.errors, status: :unprocessable_entity }
      end
    end

    uri = URI("http://api.msg91.com/api/sendhttp.php?sender=temple&route=4&mobiles=#{@reciept.contact}&authkey=-----------&encrypt=&message={text_message}")
          req = Net::HTTP.get(uri)
          puts req 
  end

  def update
    respond_to do |format|
      if @reciept.update(reciept_params)
        format.html { redirect_to @reciept, notice: 'Reciept was successfully updated.' }
        format.json { render :show, status: :ok, location: @reciept }
      else
        format.html { render :edit }
        format.json { render json: @reciept.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @reciept.destroy
    respond_to do |format|
      format.html { redirect_to reciepts_url, notice: 'Reciept was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
   
    def set_reciept
      @reciept = Reciept.find(params[:id])
    end


    def reciept_params
      params.require(:reciept).permit(:name, :address, :contact, :amount, :reciever, :date, :reciept_type, :payment_mode)
    end
end
