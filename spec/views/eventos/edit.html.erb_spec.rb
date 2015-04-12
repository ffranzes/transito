require 'rails_helper'

RSpec.describe "eventos/edit", :type => :view do
  before(:each) do
    @evento = assign(:evento, Evento.create!())
  end

  it "renders the edit evento form" do
    render

    assert_select "form[action=?][method=?]", evento_path(@evento), "post" do
    end
  end
end
