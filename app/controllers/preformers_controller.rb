class PreformersController < ApplicationController
  before_action :set_song
  before_action :set_preformer, only: [:show, :edit, :update, :destroy]
 
  def index
    @preformers = @song.preformers
  end

  def show
  end

  def new
    @preformer = @song.preformers.new
    render partial: 'form'
  end

  def create
    @preformer = @song.preformer.new(preformer_params)

    if @preformer.save
      redirect_to [@song]
    else
      render :new
    end
  end

  def edit
    render partial: "form"
  end

  def update
    if @preformer.update(preformer_params)
      redirect_to [@song, @preformer]
    else
      render :edit
    end
  end

  def destroy
    @preformer.destroy
    redirect_to chart_songs_path
  end

  private
  def preformer_params
    params.require(:preformer).permit(:name, :label)
  end

  def set_song
    @song = Song.find(params[:song_id])
  end

  def set_preformer
    @preformer = Preformer.find(params[:id])
  end 
end