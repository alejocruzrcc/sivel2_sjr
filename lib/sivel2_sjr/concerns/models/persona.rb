# encoding: UTF-8

require 'sivel2_gen/concerns/models/persona'

module Sivel2Sjr
  module Concerns
    module Models
      module Persona
        extend ActiveSupport::Concern
        include Sivel2Gen::Concerns::Models::Persona

        included do
          has_many :casosjr, class_name: 'Sivel2Sjr::Casosjr',
            foreign_key: "contacto"

          belongs_to :nacional, class_name: "Sivel2Gen::Pais", 
            foreign_key: "nacionalde", validate: true

          validates :anionac, numericality: {greater_than: 1900}
          validates :mesnac, numericality: {greater_than: 0, less_than: 13}
          validates :dianac, numericality: {greater_than: 0, less_than: 32}

        end

        module ClassMethods
        end

      end
    end
  end
end
