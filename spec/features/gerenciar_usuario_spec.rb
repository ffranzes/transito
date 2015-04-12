# coding: utf-8
require 'rails_helper'

feature 'gerenciar Usuario' do

  scenario 'incluir Usuario' do # , :js => true do
    visit new_usuario_path
    criar_e_verificar_usuario
  end

  scenario 'alterar Usuario' do #, :js => true do
    usuario = FactoryGirl.create(:usuario, nome: 'Lalalal' ) # sacou SI>M
    visit edit_usuario_path(usuario)
    atualizar_e_verificar_usuario
  end

  scenario 'excluir Usuario' do #, :javascript => true do
    usuario = FactoryGirl.create(:usuario)
    visit usuarios_path
    click_link 'Delete'
  end

  def criar_e_verificar_usuario
    fill_in 'usuario_nome', :with => "Luiz"
    fill_in 'usuario_email', :with => "eu@tu.com.br"
    fill_in 'usuario_sexo', :with => "Masculino"
    select '2014', from: 'usuario_dtnascimento_1i'
    select 'April', from: 'usuario_dtnascimento_2i'
    select '9', from: 'usuario_dtnascimento_3i'
    click_button 'Create Usuario'

    expect(page).to have_content 'Nome: Luiz'
    expect(page).to have_content 'Email: eu@tu.com.br'
    expect(page).to have_content 'Sexo: Masculino'
    expect(page).to have_content 'Dtnascimento: 2014-04-09'

  end
  def atualizar_e_verificar_usuario
    fill_in 'usuario_nome', :with => "Luiz2"
    fill_in 'usuario_email', :with => "tu@tu.com.br"
    fill_in 'usuario_sexo', :with => "Masculino"
    select '2015', from: 'usuario_dtnascimento_1i'
    select 'April', from: 'usuario_dtnascimento_2i'
    select '9', from: 'usuario_dtnascimento_3i'
    click_button 'Update Usuario'
    

    expect(page).to have_content 'Nome: Luiz2'
    expect(page).to have_content 'Email: tu@tu.com.br'
    expect(page).to have_content 'Sexo: Masculino'
  end
end
