# encoding: UTF-8
require 'date'

module Sivel2Gen
  class ActosController < ApplicationController
    load_and_authorize_resource class: Sivel2Gen::Caso

    # Crea nuevos actos procesando parámetros
    def agregar
      if params[:caso][:id].nil?
        respond_to do |format|
          format.html { render inline: 'Falta identificacion del caso' }
        end
      elsif !params[:caso_acto_id_presponsable]
        respond_to do |format|
          format.html { render inline: 'Debe tener Presunto Responsable' }
        end
      elsif !params[:caso_acto_id_categoria]
        respond_to do |format|
          format.html { render inline: 'Debe tener Categoria' }
        end
      elsif !params[:caso_acto_id_persona]
        respond_to do |format|
          format.html { render inline: 'Debe tener Víctima' }
        end
      elsif !params[:caso_acto_fecha]
        respond_to do |format|
          format.html { render inline: 'Debe tener Fecha' }
        end
      else
        params[:caso_acto_id_presponsable].each do |cpresp|
          presp = cpresp.to_i
          params[:caso_acto_id_categoria].each do |ccat|
            cat = ccat.to_i
            params[:caso_acto_id_persona].each do |cvic|
              vic = cvic.to_i
              @caso = Sivel2Gen::Caso.find(params[:caso][:id])
              acto = Sivel2Gen::Acto.new(
                id_presponsable: presp,
                id_categoria: cat,
                id_persona: vic,
              )
              acto.caso = @caso
              actosjr = Sivel2Sjr::Actosjr.new(
                fecha: params[:caso_acto_fecha],
                desplazamiento_id: params[:caso_acto_desplazamiento_id]
              )
              actosjr.acto = acto
              actosjr.save!
            end
          end
        end
      end
    
      respond_to do |format|
        format.js { render 'refrescar' }
      end
    end

    def eliminar
      acto = Acto.find(params[:id_acto].to_i)
      @caso = acto.caso
      acto.actosjr.destroy!
      acto.destroy!
      respond_to do |format|
        format.js { render 'refrescar' }
      end
    end

  end
end
