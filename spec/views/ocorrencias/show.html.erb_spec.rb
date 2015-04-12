require 'rails_helper'

RSpec.describe "ocorrencias/show", :type => :view do
  before(:each) do
    @ocorrencia = assign(:ocorrencia, Ocorrencia.create!(
      :usuario => nil,
      :evento => nil,
      :latitude => "Latitude",
      :longitude => "Longitude"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Latitude/)
    expect(rendered).to match(/Longitude/)
  end
end
