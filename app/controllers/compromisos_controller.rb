class CompromisosController < ApplicationController
  before_action :set_compromiso, only: [:show, :edit, :update, :destroy]

  # GET /recepcions
  # GET /recepcions.json
  def index
    @compromisos = Compromiso.all
  end


  def show
  end

  # GET /recepcions/new
  def new
    @compromiso = Compromiso.new
  end

  # GET /recepcions/1/edit
  def edit
  end

  # POST /recepcions
  # POST /recepcions.json
  def create
    @compromiso = Compromiso.new(compromiso_params)

    respond_to do |format|
      if @compromiso.save
        format.html { redirect_to @compromiso, notice: 'Recepcion was successfully created.' }
        format.json { render :show, status: :created, location: @compromiso }
      else
        format.html { render :new }
        format.json { render json: @compromiso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recepcions/1
  # PATCH/PUT /recepcions/1.json
  def update
    respond_to do |format|
      if @compromiso.update(recepcion_params)
        format.html { redirect_to @compromiso, notice: 'Compromiso was successfully updated.' }
        format.json { render :show, status: :ok, location: @compromiso }
      else
        format.html { render :edit }
        format.json { render json: @compromiso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recepcions/1
  # DELETE /recepcions/1.json
  def destroy
    @compromiso.destroy
    respond_to do |format|
      format.html { redirect_to compromisos_url, notice: 'Compromiso was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_compromiso
      @compromiso = Compromiso.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def compromiso_params
      params.require(:compromiso).permit(:tema, :dirigente, :fecha_ingreso, :estatus, :respuesta, :compromiso, :socio_id)
    end
end
