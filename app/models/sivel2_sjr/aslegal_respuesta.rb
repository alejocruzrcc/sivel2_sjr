# encoding: UTF-8
module Sivel2Sjr
  class AslegalRespuesta < ActiveRecord::Base
    belongs_to :aslegal, class_name: "Sivel2Sjr::Aslegal", 
      foreign_key: "id_aslegal", validate: true
    belongs_to :respuesta, class_name: "Sivel2Sjr::Respuesta", 
      foreign_key: "id_respuesta", validate: true
  end
end
