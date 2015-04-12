require 'rails_helper'

RSpec.describe "eventos/show", :type => :view do
  before(:each) do
    @evento = assign(:evento, Evento.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
