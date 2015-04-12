require "rails_helper"

RSpec.describe OcorrenciasController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/ocorrencias").to route_to("ocorrencias#index")
    end

    it "routes to #new" do
      expect(:get => "/ocorrencias/new").to route_to("ocorrencias#new")
    end

    it "routes to #show" do
      expect(:get => "/ocorrencias/1").to route_to("ocorrencias#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/ocorrencias/1/edit").to route_to("ocorrencias#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/ocorrencias").to route_to("ocorrencias#create")
    end

    it "routes to #update" do
      expect(:put => "/ocorrencias/1").to route_to("ocorrencias#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/ocorrencias/1").to route_to("ocorrencias#destroy", :id => "1")
    end

  end
end
