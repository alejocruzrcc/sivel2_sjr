# encoding: UTF-8
require 'rails_helper'

module Sivel2Sjr
  RSpec.describe Aslegal, :type => :model do

    it "valido" do
      aslegal = FactoryGirl.build(:aslegal)
      expect(aslegal).to be_valid
      aslegal.destroy
    end

    it "no valido" do
      aslegal = FactoryGirl.build(:aslegal, nombre: '')
      expect(aslegal).not_to be_valid
      aslegal.destroy
    end

    it "existente" do
      aslegal = Aslegal.where(id: 0).take
      expect(aslegal.nombre).to eq("SIN INFORMACIÓN")
    end

  end
end
