class ArtistsController < ApplicationController
  before_action :set_song
  before_action :set_artist, only: [:show, :edit, :update, :destroy]

  def index
    @artists = @song.artist
  end

  def show
  end

  def new
    @artist = @song.artists.new
    render partial: 'form'
  end


  def create
    @artist = @song.artist.new(artist_params)

    if @artist.save
      redirect_to [@song]
    else
      render :new
    end
  end

  def edit
    render partial: "form"
  end

  def update
    if @artist.update(artist_params)
      redirect_to [@song, @artist]
    else
      render :edit
    end
  end

  def destroy
    @artist.destroy
    redirect_to chart_songs_path
  end

  private
  def artist_params
    params.require(:artist).permit(:name, :recordlabel)
  end

  def set_song
    @song = Song.find(params[:song_id])
  end

  def set_artist
    @artist = Artist.find(params[:id])
  end 
end
