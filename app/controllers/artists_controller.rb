class ArtistsController < ApplicationController
  before_action :set_song
  before_action :set_artist, only: [:show, :edit, :update, :destroy]

  def index
    @artists = @song.artists
  end

  def new
    @artist = @song.artists.new
    #render partial: 'form'
  end

  def show
  end

  def create
    @artists = @song.artisits.new(artist_params)

    if @artist.save
      redirect_to [@song, @artist]
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
    @artists.destroy
    redirect_to song_artists_path
  end

  private
    def set_song
      @sub = Song.find(params[:song_id])
    end

    def set_artist
      @artist = Artist.find(params[:id])
    end

    def artist_params
      params.require(:artist).permit(:name, :label)
    end

end
