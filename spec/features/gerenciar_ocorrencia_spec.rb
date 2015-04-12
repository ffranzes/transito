# coding: utf-8

require 'rails_helper'

feature 'gerenciar Ocorrencia' do

  before :each do
    usuario = FactoryGirl.create(:usuario, nome: 'Teste A' )
    evento = FactoryGirl.create(:evento, descricao: 'Evento A' )
  end

  

  scenario 'incluir Ocorrencia' do # , :js => true  do
    visit new_ocorrencia_path
    preencher_e_verificar_ocorrencia
  end

  scenario 'alterar Ocorrencia' do #, :js => true  do

    ocorrencia = FactoryGirl.create(:ocorrencia)
    visit edit_ocorrencia_path(ocorrencia)
    atualizar_e_verificar_ocorrencia
  end

  scenario 'excluir Ocorrencia' do #, :javascript => true  do

        ocorrencia = FactoryGirl.create(:ocorrencia)

        visit ocorrencias_path

        click_link 'Delete'
  end
   def preencher_e_verificar_ocorrencia

      fill_in 'ocorrencia_latitude', with: '50'
      fill_in 'ocorrencia_longitude', with: '25'
      select 'Teste A', from: 'Usuario'
      
      select 'Evento A', from: 'Evento'
      click_button 'Create Ocorrencia'
      expect(page).to have_content 'Usuario: 1'
      expect(page).to have_content 'Evento: 1'
      expect(page).to have_content 'Latitude: 50'
      expect(page).to have_content 'Longitude: 25'
      
 end
 def atualizar_e_verificar_ocorrencia

      fill_in 'ocorrencia_latitude', with: '50'
      fill_in 'ocorrencia_longitude', with: '25'
      select 'Teste A', from: 'Usuario'
      
      select 'Evento A', from: 'Evento'
      click_button 'Update Ocorrencia'
      expect(page).to have_content 'Usuario: 1'
      expect(page).to have_content 'Evento: 1'
      expect(page).to have_content 'Latitude: 50'
      expect(page).to have_content 'Longitude: 25'
      
 end
end