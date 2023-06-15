class PagesController < ApplicationController
  def index        
    @articles = Article.all.with_rich_text_content_and_embeds
  end
end
