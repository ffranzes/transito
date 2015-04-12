require 'rails_helper'

RSpec.describe "usuarios/index", :type => :view do
  before(:each) do
    assign(:usuarios, [
      FactoryGirl.create(:usuario, nome: 'Usuario 1'),
      FactoryGirl.create(:usuario, nome: 'Usuario 2')
    ])
  end

  it "renders a list of usuarios" do
    render
  end
end
