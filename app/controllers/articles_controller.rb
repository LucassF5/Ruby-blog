class ArticlesController < ApplicationController
  def index
    @articles = Article.all # Busca todos os artigos do banco de dados
  end

  def show
    @article = Article.find(params[:id]) # Busca um artigo pelo ID
  end

  def new
    @article = Article.new # Cria um novo artigo
  end

  def create
    @article = Article.new(article_params) # Cria um novo artigo com os parâmetros passados pelo formulário

    if @article.save
      redirect_to @article # Redireciona para a página do artigo
    else
      render :new, status: :unprocessable_entity # Renderiza a página de criação de artigo(new) com status de erro(422)
    end
  end

  def edit
    @article = Article.find(params[:id]) # Busca um artigo pelo ID
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :edir, status: :unprocessable_entity
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path, status: :see_other # Redireciona para a página raiz com status de redirecionamento(303)
  end

  private
  def article_params
    params.require(:article).permit(:title, :body) # Define os parâmetros permitidos para criação de um artigo
  end
end
