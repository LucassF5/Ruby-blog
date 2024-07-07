class Comment < ApplicationRecord
  include Visible

  belongs_to :article # Adiciona relacionamento de muitos para 1 com a tabela articles
end
