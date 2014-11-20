# encoding: UTF-8
module Sivel2Sjr
  class AyudaestadoRespuesta < ActiveRecord::Base
    belongs_to :ayudaestado, class_name: "Sivel2Sjr::Ayudaestado", 
      foreign_key: "id_ayudaestado", validate: true
    belongs_to :respuesta, class_name: "Sivel2Sjr::Respuesta", 
      foreign_key: "id_respuesta", validate: true
  end
end
