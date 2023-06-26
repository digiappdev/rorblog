class CommentsController < ApplicationController
    before_action :find_commentable

    def new
      @comment = Comment.new
    end

    def create
      @comment = @commentable.comments.new(comment_params)
      @comment.user = current_user
      if @comment.save
        redirect_to @commentable, notice: 'Your comment was successfully posted!'
      else
        redirect_to @commentable, notice: "Your comment wasn't posted! Please sign in!"
      end
    end

    def destroy
      @comment = Comment.find(params[:id])
      @comment.destroy
      redirect_back(fallback_location: root_path)    
    end

    private

    def comment_params
      params.require(:comment).permit(:content)
    end

    def find_commentable
      @commentable = Comment.find_by_id(params[:comment_id]) if params[:comment_id]
      @commentable = Article.find_by_id(params[:article_id]) if params[:article_id]
    end
end
