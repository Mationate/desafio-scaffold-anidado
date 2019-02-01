class SongsController < ApplicationController
  def create
    @song = Song.new(song_params)
    @song.playlist_id = params[:playlist_id]

    if @song.save
      redirect_to playlist_path(@song.playlist_id), notice: 'La canción se guardó exitosamente'
    else
      redirect_to playlist_path(@song.playlist_id), alert: 'No se pudo guardar la canción'
    end
  end

  def destroy
    song = Song.find(params[:id])
    song.destroy
    redirect_to playlist_path(song.playlist_id), notice: 'Se ha eliminado la canción con éxito'
  end

  private
  def song_params
    params.require(:song).permit(:artist, :name)
  end
  
end
