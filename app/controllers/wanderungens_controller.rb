class WanderungensController < ApplicationController
  before_action :set_wanderungen, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]

  # GET /wanderungens
  # GET /wanderungens.json
  def index
    @search = Wanderungen.ransack(params[:q])
    @wanderungens = @search.result.order("created_at DESC").paginate(:page => params[:page], :per_page => 20)
  end

  # GET /wanderungens/1
  # GET /wanderungens/1.json
  def show
  end

  # GET /wanderungens/new
  def new
    @wanderungen = current_user.wanderungens.build
  end

  # GET /wanderungens/1/edit
  def edit
  end

  # POST /wanderungens
  # POST /wanderungens.json
  def create
    @wanderungen = current_user.wanderungens.build(wanderungen_params)

    respond_to do |format|
      if @wanderungen.save
        format.html { redirect_to @wanderungen, notice: 'Wanderungen erfolgreich erstellt.' }
        format.json { render action: 'show', status: :created, location: @wanderungen }
      else
        format.html { render action: 'new' }
        format.json { render json: @wanderungen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wanderungens/1
  # PATCH/PUT /wanderungens/1.json
  def update
    respond_to do |format|
      if @wanderungen.update(wanderungen_params)
        format.html { redirect_to @wanderungen, notice: 'Wanderung erfolgreich aktualisiert.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @wanderungen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wanderungens/1
  # DELETE /wanderungens/1.json
  def destroy
    @wanderungen.destroy
    respond_to do |format|
      format.html { redirect_to wanderungens_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wanderungen
      @wanderungen = Wanderungen.find(params[:id])
    end

    def correct_user
      @wanderungen = current_user.wanderungens.find_by(id: params[:id])
      redirect_to wanderungens_path, notice: "Du bist nicht berechtigt diese Wanderung zu editieren" if @wanderungen.nil?
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wanderungen_params
      params.require(:wanderungen).permit(:description, :schwierigkeitsgrad_id, :zeitdauer, :moreinfo, :region_id, :upmeter, :downmeter, :image, :body )
    end
end
