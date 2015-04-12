require 'rails_helper'

RSpec.describe "eventos/index", :type => :view do
  before(:each) do
    assign(:eventos, [
      Evento.create!(),
      Evento.create!()
    ])
  end

  it "renders a list of eventos" do
    render
  end
end
