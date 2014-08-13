class SchwierigkeitsgradsController < ApplicationController
  before_action :set_schwierigkeitsgrad, only: [:show, :edit, :update, :destroy]

  # GET /schwierigkeitsgrads
  # GET /schwierigkeitsgrads.json
  def index
    @schwierigkeitsgrads = Schwierigkeitsgrad.all
  end

  # GET /schwierigkeitsgrads/1
  # GET /schwierigkeitsgrads/1.json
  def show
  end

  # GET /schwierigkeitsgrads/new
  def new
    @schwierigkeitsgrad = Schwierigkeitsgrad.new
  end

  # GET /schwierigkeitsgrads/1/edit
  def edit
  end

  # POST /schwierigkeitsgrads
  # POST /schwierigkeitsgrads.json
  def create
    @schwierigkeitsgrad = Schwierigkeitsgrad.new(schwierigkeitsgrad_params)

    respond_to do |format|
      if @schwierigkeitsgrad.save
        format.html { redirect_to @schwierigkeitsgrad, notice: 'Schwierigkeitsgrad was successfully created.' }
        format.json { render action: 'show', status: :created, location: @schwierigkeitsgrad }
      else
        format.html { render action: 'new' }
        format.json { render json: @schwierigkeitsgrad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /schwierigkeitsgrads/1
  # PATCH/PUT /schwierigkeitsgrads/1.json
  def update
    respond_to do |format|
      if @schwierigkeitsgrad.update(schwierigkeitsgrad_params)
        format.html { redirect_to @schwierigkeitsgrad, notice: 'Schwierigkeitsgrad was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @schwierigkeitsgrad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schwierigkeitsgrads/1
  # DELETE /schwierigkeitsgrads/1.json
  def destroy
    @schwierigkeitsgrad.destroy
    respond_to do |format|
      format.html { redirect_to schwierigkeitsgrads_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schwierigkeitsgrad
      @schwierigkeitsgrad = Schwierigkeitsgrad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def schwierigkeitsgrad_params
      params.require(:schwierigkeitsgrad).permit(:description, :code)
    end
end
