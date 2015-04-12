require 'rails_helper'

RSpec.describe "ocorrencias/index", :type => :view do
  before(:each) do
    assign(:ocorrencias, [
      FactoryGirl.create(:ocorrencia, 
        :usuario => nil,
        :evento => nil,
        :latitude => "Latitude",
        :longitude => "Longitude"
      ),
      FactoryGirl.create(:ocorrencia, 
        :usuario => nil,
        :evento => nil,
        :latitude => "Latitude",
        :longitude => "Longitude"
      )
    ])
  end

  it "renders a list of ocorrencias" do
    render
    assert_select "tbody>tr", :count => 2
  end
end
