json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :nome, :email, :sexo, :dtnascimento
  json.url usuario_url(usuario, format: :json)
end
