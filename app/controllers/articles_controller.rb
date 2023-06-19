class ArticlesController < ApplicationController
  def show
    @article = Article.find(params[:id])
    @categories = Category.all
  end
end
