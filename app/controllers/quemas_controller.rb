class QuemasController < ApplicationController
  before_action :set_quema, only: [:show, :edit, :update, :destroy]

  # GET /quemas
  # GET /quemas.json
  def index
    @quemas = Quema.all
  end

  # GET /quemas/1
  # GET /quemas/1.json
  def show
  end

  # GET /quemas/new
  def new
    @quema = Quema.new
  end

  # GET /quemas/1/edit
  def edit
  end

  # POST /quemas
  # POST /quemas.json
  def create
    @quema = Quema.new(quema_params)

    respond_to do |format|
      if @quema.save
        format.html { redirect_to @quema, notice: 'Quema was successfully created.' }
        format.json { render :show, status: :created, location: @quema }
      else
        format.html { render :new }
        format.json { render json: @quema.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quemas/1
  # PATCH/PUT /quemas/1.json
  def update
    respond_to do |format|
      if @quema.update(quema_params)
        format.html { redirect_to @quema, notice: 'Quema was successfully updated.' }
        format.json { render :show, status: :ok, location: @quema }
      else
        format.html { render :edit }
        format.json { render json: @quema.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quemas/1
  # DELETE /quemas/1.json
  def destroy
    @quema.destroy
    respond_to do |format|
      format.html { redirect_to quemas_url, notice: 'Quema was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quema
      @quema = Quema.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quema_params
      params.require(:quema).permit(:estado)
    end
end
