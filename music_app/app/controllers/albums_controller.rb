class AlbumsController < ApplicationController
  def new
    @album = Album.new
    @band = Band.find_by(id: params[:band_id])
    @bands = Band.all
    render :new
  end

  def create
    @band = Band.find_by(album_params[:band])
    album_params[:band_id] = @band.id
  end

  def album_params
    params.require(:album).permit(:title, :year, :live, :band_id, :band)
  end
end