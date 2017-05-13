class TemperaturasController < ApplicationController
  before_action :set_temperatura, only: [:show, :edit, :update, :destroy]

  # GET /temperaturas
  # GET /temperaturas.json
  def index
    @temperaturas = Temperatura.all
  end

  # GET /temperaturas/1
  # GET /temperaturas/1.json
  def show
  end

  # GET /temperaturas/new
  def new
    @temperatura = Temperatura.new
  end

  # GET /temperaturas/1/edit
  def edit
  end

  # POST /temperaturas
  # POST /temperaturas.json
  def create
    @temperatura = Temperatura.new(temperatura_params)

    respond_to do |format|
      if @temperatura.save
        format.html { redirect_to @temperatura, notice: 'Temperatura was successfully created.' }
        format.json { render :show, status: :created, location: @temperatura }
      else
        format.html { render :new }
        format.json { render json: @temperatura.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /temperaturas/1
  # PATCH/PUT /temperaturas/1.json
  def update
    respond_to do |format|
      if @temperatura.update(temperatura_params)
        format.html { redirect_to @temperatura, notice: 'Temperatura was successfully updated.' }
        format.json { render :show, status: :ok, location: @temperatura }
      else
        format.html { render :edit }
        format.json { render json: @temperatura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /temperaturas/1
  # DELETE /temperaturas/1.json
  def destroy
    @temperatura.destroy
    respond_to do |format|
      format.html { redirect_to temperaturas_url, notice: 'Temperatura was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_temperatura
      @temperatura = Temperatura.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def temperatura_params
      params.require(:temperatura).permit(:valor)
    end
end
