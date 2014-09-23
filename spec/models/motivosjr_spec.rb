# encoding: UTF-8
require 'rails_helper'

RSpec.describe Motivosjr, :type => :model do

  it "valido" do
		motivosjr = FactoryGirl.build(:motivosjr)
		expect(motivosjr).to be_valid
		motivosjr.destroy
	end

  it "no valido" do
		motivosjr = FactoryGirl.build(:motivosjr, nombre: '')
		expect(motivosjr).not_to be_valid
		motivosjr.destroy
	end

	it "existente" do
		motivosjr = Motivosjr.where(id: 0).take
		expect(motivosjr.nombre).to eq("SIN INFORMACIÓN")
	end

end
