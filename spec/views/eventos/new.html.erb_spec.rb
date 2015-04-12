require 'rails_helper'

RSpec.describe "eventos/new", :type => :view do
  before(:each) do
    assign(:evento, Evento.new())
  end

  it "renders new evento form" do
    render

    assert_select "form[action=?][method=?]", eventos_path, "post" do
    end
  end
end
