class Article < ApplicationRecord
  include Visible # Adiciona módulo Visible

  has_many :comments # Adiciona relacionamento de 1 para muitos com a tabela comments

  validates :title, presence: true # Adiciona validação de presença
  validates :body, presence: true, length: { minimum: 10} # Adiciona validação de tamanho mínimo de 10 caracteres
end
