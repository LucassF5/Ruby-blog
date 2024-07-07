class Article < ApplicationRecord
  include Visible # Adiciona módulo Visible

  has_many :comments, dependent: :destroy # Adiciona relacionamento com Comment e define que ao deletar um Article, os Comments relacionados também serão deletados

  validates :title, presence: true # Adiciona validação de presença
  validates :body, presence: true, length: { minimum: 10} # Adiciona validação de tamanho mínimo de 10 caracteres
end
