class ArticlesController < InheritedResources::Base
  before_action :authenticate_user!, except: [:index, :show]

  def create
    @article = Article.new(article_params)
     @article.user_id = current_user.id
     respond_to do |format|
       if @article.save
         format.html { redirect_to @article, notice: 'Article was successfully created.' }
       else
         format.html { render :new }
       end
     end
  end

  private

    def article_params
      params.require(:article).permit(:image, :title, :description, :user_id)
    end
end
