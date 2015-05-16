class RudimentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_rudiment, only: [:show, :edit, :update, :destroy]

  # GET /rudiments
  # GET /rudiments.json
  def index
    @rudiments = Rudiment.all.order(:id)
  end

  # GET /rudiments/1
  # GET /rudiments/1.json
  def show
  end

  # GET /rudiments/new
  def new
    @rudiment = Rudiment.new
  end

  # GET /rudiments/1/edit
  def edit
  end

  # POST /rudiments
  # POST /rudiments.json
  def create
    @rudiment = Rudiment.new(rudiment_params)

    respond_to do |format|
      if @rudiment.save
        format.html { redirect_to @rudiment, notice: 'Rudiment was successfully created.' }
        format.json { render :show, status: :created, location: @rudiment }
      else
        format.html { render :new }
        format.json { render json: @rudiment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rudiments/1
  # PATCH/PUT /rudiments/1.json
  def update
    respond_to do |format|
      if @rudiment.update(rudiment_params)
        format.html { redirect_to @rudiment, notice: 'Rudiment was successfully updated.' }
        format.json { render :show, status: :ok, location: @rudiment }
      else
        format.html { render :edit }
        format.json { render json: @rudiment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rudiments/1
  # DELETE /rudiments/1.json
  def destroy
    @rudiment.destroy
    respond_to do |format|
      format.html { redirect_to rudiments_url, notice: 'Rudiment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rudiment
      @rudiment = Rudiment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rudiment_params
      params.require(:rudiment).permit(:number, :name, :yt, :sheet)
    end
end
