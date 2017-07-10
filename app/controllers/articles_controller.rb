class ArticlesController < InheritedResources::Base

  private

    def article_params
      params.require(:article).permit(:image, :title, :description, :user_id)
    end
end

