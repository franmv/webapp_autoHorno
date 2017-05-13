class MaterialesController < ApplicationController
  before_action :set_materiale, only: [:show, :edit, :update, :destroy]

  # GET /materiales
  # GET /materiales.json
  def index
    @materiales = Materiale.all
  end

  # GET /materiales/1
  # GET /materiales/1.json
  def show
  end

  # GET /materiales/new
  def new
    @materiale = Materiale.new
  end

  # GET /materiales/1/edit
  def edit
  end

  # POST /materiales
  # POST /materiales.json
  def create
    @materiale = Materiale.new(materiale_params)

    respond_to do |format|
      if @materiale.save
        format.html { redirect_to @materiale, notice: 'Materiale was successfully created.' }
        format.json { render :show, status: :created, location: @materiale }
      else
        format.html { render :new }
        format.json { render json: @materiale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /materiales/1
  # PATCH/PUT /materiales/1.json
  def update
    respond_to do |format|
      if @materiale.update(materiale_params)
        format.html { redirect_to @materiale, notice: 'Materiale was successfully updated.' }
        format.json { render :show, status: :ok, location: @materiale }
      else
        format.html { render :edit }
        format.json { render json: @materiale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /materiales/1
  # DELETE /materiales/1.json
  def destroy
    @materiale.destroy
    respond_to do |format|
      format.html { redirect_to materiales_url, notice: 'Materiale was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_materiale
      @materiale = Materiale.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def materiale_params
      params.require(:materiale).permit(:nombre)
    end
end
