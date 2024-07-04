class ArticlesController < ApplicationController
  def index
    @articles = Article.all # Busca todos os artigos do banco de dados
  end
end
