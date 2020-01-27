class AdvisorsController < ApplicationController

  # GET /advisors
  def index
    @advisors = Advisor.all
  end

  # GET /advisors/1
  def show
    @advisor = Advisor.find(params[:id])
  end

  # GET /advisors/new
  def new
    #if user_signed_in? && current_user.admin
      @advisor = Advisor.new
    #else
    #  redirect_to advisors_path
    #end
  end

  # GET /advisors/1/edit
  def edit
    #if user_signed_in? && current_user.admin
      @advisor = Advisor.find(params[:id])
    #else
    #  redirect_to advisors_path
    #end
  end

  # POST /advisors
  def create
    #if user_signed_in? && current_user.admin
      @advisor = Advisor.new(advisor_params)

      if @advisor.save
        redirect_to @advisor
      else
        render 'new'
      end
    #else
    #  redirect_to advisors_path
    #end
  end

  # PATCH/PUT /advisors/1
  def update
    #if user_signed_in? && current_user.admin
      @advisor = Advisor.find(params[:id])

      if @advisor.update(advisor_params)
        redirect_to @advisor
      else
        render 'edit'
      end
    #else
    #  redirect_to advisors_path
    #end
  end  

  # DELETE /advisors/1
  def destroy
    #if user_signed_in? && current_user.admin
      @advisor = Advisor.find(params[:id])
      @advisor.destroy
    #end

    redirect_to advisors_path
  end

  private
    # Never trust parameters from the scary internet
    def advisor_params
      params.require(:advisor).permit(:name, :email, :intern, :user_id)
    end
end