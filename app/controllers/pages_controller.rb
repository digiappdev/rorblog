class PagesController < ApplicationController
  def index        
    @articles = Article.all.with_rich_text_content_and_embeds.order("Created_at DESC")
    
    @categories = Category.all.order("Created_at DESC")
  end
end
