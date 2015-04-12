json.array!(@eventos) do |evento|
  json.extract! evento, :id, :descricao, :tipo
  json.url evento_url(evento, format: :json)
end
