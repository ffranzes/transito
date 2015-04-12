require 'rails_helper'

RSpec.describe "usuarios/edit", :type => :view do
  before(:each) do
    @usuario = assign(:usuario, FactoryGirl.create(:usuario))
  end

  it "renders the edit usuario form" do
    render

    assert_select "form[action=?][method=?]", usuario_path(@usuario), "post" do
    end
  end
end
