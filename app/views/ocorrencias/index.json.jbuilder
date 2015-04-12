json.array!(@ocorrencias) do |ocorrencia|
  json.extract! ocorrencia, :id, :usuario_id, :evento_id, :datainicio, :datatermino, :latitude, :longitude
  json.url ocorrencia_url(ocorrencia, format: :json)
end
