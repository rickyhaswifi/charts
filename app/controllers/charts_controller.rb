class ChartsController < ApplicationController
  before_action :set_song

  def index
    @charts = Chart.all
  end

  def new
    @artists = Artist.all - @song.artists
    @chart = @song.charts.new
    render partial: 'form'
  end
  
  # def show
  #   @chart = Chart.find(params[:id])
  # end

  def create
    @chart = @song.charts.new(chart_params)

    if @chart.save
      redirect_to song_charts_path(@song)
    else
      render :new
    end
  end

  # def edit
  #   @chart = Chart.find(params[:id])
  # end

  # def update
  #   @chart = Chart.find(params[:id])

  #   if @chart.update(chart_params)
  #     redirect_to chart_path
  #   else 
  #     render :edit  
  #   end
  # end

  def destroy
    @chart = @song.charts.find(params[:id])
    @chart.destroy
    redirect_to song_charts_path(@song)
  end

  private
  def chart_params
  params.require(:chart).permit(:title, :genre)
  end


  def set_song
    @song = Song.find(params[:song_id])
  end

end
