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
    @advisor = Advisor.new
  end

  # GET /advisors/1/edit
  def edit
    @advisor = Advisor.find(params[:id])
  end

  # POST /advisors
  def create
    @advisor = Advisor.new(advisor_params)

    if @advisor.save
      redirect_to @advisor
    else
      render 'new'
    end
  end

  # PATCH/PUT /advisors/1
  def update
    @advisor = Advisor.find(params[:id])

    if @advisor.update(advisor_params)
      redirect_to @advisor
    else
      render 'edit'
    end
  end  

  # DELETE /advisors/1
  def destroy
    @advisor = Advisor.find(params[:id])
    @advisor.destroy

    redirect_to advisors_path
  end

  private
    # Never trust parameters from the scary internet
    def advisor_params
      params.require(:advisor).permit(:name, :email, :intern)
    end
end