class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update, :destroy]
  validates :spotify, {slice! 'https://open.spotify.com/track/'}

  def index
    @songs = Song.all
  end

  def show
  end

  def new
    @song = Songs.new
    render partial: 'form'
  end


  def create
    @song = Songs.new(song_params)

    if @song.save
      redirect_to @song
    else
      render :new
    end
  end

  def edit
    render partial: "form"
  end

  def update
    if @song.update(song_params)
      redirect_to @song
    else
      render :edit
    end
  end

  def destroy
    @song.destroy
    redirect_to songs_path
  end

  private
  def song_params
    params.require(:song).permit(:title, :artist, :album, :genre, :spotify)
  end

  def set_song
    @song = Song.find(params[:id])
  end 


  
end
