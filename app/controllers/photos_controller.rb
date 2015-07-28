class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @photo_id = params["id"]
    photos_db = Photo.all
    @photo_url = photos_db.find(@photo_id).source
    @photo_caption = photos_db.find(@photo_id).caption

    render("photo_details.html.erb")
  end

  def destroy

    photo_id = params["id"]
    row = Photo.find(photo_id)
    row.destroy

    redirect_to('/photos')
    # @list_of_photos = Photo.all
    # render("index.html.erb")

  end

  def edit

    redirect_to('/photos')

  end

  def new_form

    render("new_form.html.erb")

  end


end
