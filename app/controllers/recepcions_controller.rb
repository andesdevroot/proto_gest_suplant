class RecepcionsController < ApplicationController
  before_action :set_recepcion, only: [:show, :edit, :update, :destroy]

  # GET /recepcions
  # GET /recepcions.json
  def index
    @recepcions = Recepcion.all
  end

  # GET /recepcions/1
  # GET /recepcions/1.json
  def show
  end

  # GET /recepcions/new
  def new
    @recepcion = Recepcion.new
  end

  # GET /recepcions/1/edit
  def edit
  end

  # POST /recepcions
  # POST /recepcions.json
  def create
    @recepcion = Recepcion.new(recepcion_params)

    respond_to do |format|
      if @recepcion.save
        format.html { redirect_to @recepcion, notice: 'Recepcion was successfully created.' }
        format.json { render :show, status: :created, location: @recepcion }
      else
        format.html { render :new }
        format.json { render json: @recepcion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recepcions/1
  # PATCH/PUT /recepcions/1.json
  def update
    respond_to do |format|
      if @recepcion.update(recepcion_params)
        format.html { redirect_to @recepcion, notice: 'Recepcion was successfully updated.' }
        format.json { render :show, status: :ok, location: @recepcion }
      else
        format.html { render :edit }
        format.json { render json: @recepcion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recepcions/1
  # DELETE /recepcions/1.json
  def destroy
    @recepcion.destroy
    respond_to do |format|
      format.html { redirect_to recepcions_url, notice: 'Recepcion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recepcion
      @recepcion = Recepcion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recepcion_params
      params.require(:recepcion).permit(:tema, :dirigente, :fecha, :socio_id)
    end
end
