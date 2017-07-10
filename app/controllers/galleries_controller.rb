class GalleriesController < InheritedResources::Base

  private

    def gallery_params
      params.require(:gallery).permit(:image, :user_id)
    end
end

