class Maquina2sController < ApplicationController
  before_action :set_maquina2, only: [:show, :edit, :update, :destroy]

  # GET /maquina2s
  # GET /maquina2s.json
  def index
    @maquina2s = Maquina2.all
  end

  # GET /maquina2s/1
  # GET /maquina2s/1.json
  def show
  end

  # GET /maquina2s/new
  def new
    @maquina2 = Maquina2.new
  end

  # GET /maquina2s/1/edit
  def edit
  end

  # POST /maquina2s
  # POST /maquina2s.json
  def create
    @maquina2 = Maquina2.new(maquina2_params)

    respond_to do |format|
      if @maquina2.save
        format.html { redirect_to @maquina2, notice: 'Maquina2 was successfully created.' }
        format.json { render :show, status: :created, location: @maquina2 }
      else
        format.html { render :new }
        format.json { render json: @maquina2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /maquina2s/1
  # PATCH/PUT /maquina2s/1.json
  def update
    respond_to do |format|
      if @maquina2.update(maquina2_params)
        format.html { redirect_to @maquina2, notice: 'Maquina2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @maquina2 }
      else
        format.html { render :edit }
        format.json { render json: @maquina2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /maquina2s/1
  # DELETE /maquina2s/1.json
  def destroy
    @maquina2.destroy
    respond_to do |format|
      format.html { redirect_to maquina2s_url, notice: 'Maquina2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_maquina2
      @maquina2 = Maquina2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def maquina2_params
      params.require(:maquina2).permit(:area, :socio_id)
    end
end
