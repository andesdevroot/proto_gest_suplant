class CompromisosController < InheritedResources::Base

  private

    def compromiso_params
      params.require(:compromiso).permit(:tema, :compromiso, :dirigente, :estatus, :fecha_ingreso, :fecha_tope, :respuesta, :socio_id)
    end

end
