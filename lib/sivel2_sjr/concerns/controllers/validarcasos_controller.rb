# encoding: UTF-8

require_dependency 'sivel2_gen/concerns/controllers/validarcasos_controller'

module Sivel2Sjr
  module Concerns
    module Controllers
      module ValidarcasosController
        extend ActiveSupport::Concern

        include Sivel2Gen::Concerns::Controllers::ValidarcasosController

        included do

          def rango_fechas
            'Fecha de recepción'
          end

          def filtro_oficina(casos, campo = 'oficina_id')
            if (params[:validarcaso] && params[:validarcaso][:oficina_id] && 
                params[:validarcaso][:oficina_id] != '')
              ofi = params[:validarcaso][:oficina_id].to_i
              casos = casos.where("#{campo} = ?", ofi)
            end
            return casos
          end

          def validar
            @titulo_validarcasos = 'Reporte de Validaciones'
            @rango_fechas = rango_fechas
            @validaciones = []
            @casos = Sivel2Sjr::Casosjr.joins(:caso).all.order(:fecharec)
            @casos = filtro_fechas(@casos, 'fecharec')
            @casos = filtro_oficina(@casos)

            validacion_estandar(@casos.clone, 'Casos sin memo', 
                                "TRIM(sivel2_gen_caso.memo)='' OR sivel2_gen_caso.memo IS NULL")
          end # def validar
         
          def validarcasos_params
            params.require(:validarcaso).permit(
              :fechafin,
              :fechaini,
              :oficina
            )
          end

        end # included

      end
    end
  end
end

