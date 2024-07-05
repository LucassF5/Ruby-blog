class Article < ApplicationRecord
  validates :title, presence: true # Adiciona validação de presença
  validates :body, presence: true, length: { minimum: 10} # Adiciona validação de tamanho mínimo de 10 caracteres
end
