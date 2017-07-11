class GalleriesController < InheritedResources::Base
  before_action :authenticate_user!, except: [:index, :show]

  def create
    @gallery = Gallery.new(gallery_params)
     @gallery.user_id = current_user.id
     respond_to do |format|
       if @gallery.save
         format.html { redirect_to @gallery, notice: 'Image was successfully uploaded.' }
       else
         format.html { render :new }
       end
     end
  end

  private

    def gallery_params
      params.require(:gallery).permit(:image, :user_id)
    end
end
