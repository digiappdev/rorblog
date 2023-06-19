class PagesController < ApplicationController
  def index        
    @pagy, @articles = pagy(Article.all.with_rich_text_content_and_embeds.order("Created_at DESC"), items: 10)
    
    @categories = Category.all.order("Created_at DESC")
  end
end
