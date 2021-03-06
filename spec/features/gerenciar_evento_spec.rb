# coding: utf-8
require 'rails_helper'

feature 'gerenciar Evento' do

  scenario 'incluir Evento' do # , :js => true do
    visit new_evento_path
    criar_e_verificar_evento
  end

  scenario 'alterar Evento' do #, :js => true do
    evento = FactoryGirl.create(:evento)
    visit edit_evento_path(evento)
    atualizar_e_verificar_evento
  end

  scenario 'excluir Evento' do #, :javascript => true do
    evento = FactoryGirl.create(:evento)
    visit eventos_path
    click_link 'Delete'
  end

  def criar_e_verificar_evento
    fill_in 'Descricao', :with => "Desc A"
    fill_in 'Tipo', :with => "Tipo A"
    click_button 'Create Evento'
    

    expect(page).to have_content 'Descricao: Desc A'
    expect(page).to have_content 'Tipo: Tipo A'

  end
  def atualizar_e_verificar_evento
    fill_in 'Descricao', :with => "Desc A"
    fill_in 'Tipo', :with => "Tipo A"
    click_button 'Update Evento'
    

    expect(page).to have_content 'Descricao: Desc A'
    expect(page).to have_content 'Tipo: Tipo A'

  end
end
