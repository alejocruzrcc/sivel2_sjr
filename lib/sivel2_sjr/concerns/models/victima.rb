# encoding: UTF-8

require 'sivel2_gen/concerns/models/victima'

module Sivel2Sjr
  module Concerns
    module Models
      module Victima
        extend ActiveSupport::Concern
        include Sivel2Gen::Concerns::Models::Victima

        included do
          has_many :antecedente_victima, foreign_key: :id_victima, 
            validate: true, dependent: :destroy

          # En el orden de esquema en base 
          belongs_to :caso, foreign_key: "id_caso", validate: true, 
            class_name: "Sivel2Gen::Caso"
          belongs_to :etnia, foreign_key: "id_etnia", validate: true, 
            class_name: "Sivel2Gen::Etnia"
          belongs_to :filiacion, foreign_key: "id_filiacion", 
            validate: true, class_name: "Sivel2Gen::Filiacion"
          belongs_to :iglesia, foreign_key: "id_iglesia", validate: true, 
            class_name: "Sivel2Gen::Iglesia"
          belongs_to :organizacion, foreign_key: "id_organizacion", validate: true, 
            class_name: "Sivel2Gen::Organizacion"
          belongs_to :persona, foreign_key: "id_persona", validate: true, 
            class_name: "Sivel2Gen::Persona"
          accepts_nested_attributes_for :persona, reject_if: :all_blank
          belongs_to :profesion, foreign_key: "id_profesion", validate: true, 
            class_name: "Sivel2Gen::Profesion"
          belongs_to :rangoedad, foreign_key: "id_rangoedad", validate: true, 
            class_name: "Sivel2Gen::Rangoedad"
          belongs_to :sectorsocial, foreign_key: "id_sectorsocial", validate: true, 
            class_name: "Sivel2Gen::Sectorsocial"
          belongs_to :vinculoestado, foreign_key: "id_vinculoestado", validate: true, 
            class_name: "Sivel2Gen::Vinculoestado"
          belongs_to :presponsable, foreign_key: "organizacionarmada", 
            validate: true, class_name: "Sivel2Gen::Presponsable"

          validates :caso, presence: true
          validates :persona, presence: true
        end

        module ClassMethods
        end

      end
    end
  end
end
