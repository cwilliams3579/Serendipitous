class CommentsController < ApplicationController
  before_action :find_post
  
  def create
    @comment = @article.comments.create(params[:comment].permit(:content))
    @comment.user_id = current_user.id
    @comment.save
    
    if @comment.save
      redirect_to article_path(@article)
    else
      render 'new'
    end
  end
  
  private
  
    def find_post
      @post = Post.find(params[:post_id])
    end
      
end
