class Ocorrencia < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :evento
end
