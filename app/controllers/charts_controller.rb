class ChartsController < ApplicationController
  before_action :set_chart, only: [:show, :edit, :update, :destroy]

  def index
    @charts = Chart.all
  end

  def new
    @chart = Chart.new
    #render partial: 'form'
  end
  
  def show
  end

  def create
    @chart = Chart.new(chart_params)

    if @chart.save
      redirect_to charts_path
    else
      render :new
    end
  end

  def edit
  end

  def update

    if @chart.update(chart_params)
      redirect_to chart_path
    else 
      render :edit  
    end
  end

  def destroy
    @chart.destroy
    redirect_to charts_path
  end

  private
  def chart_params
  params.require(:chart).permit(:attr, :title, :genre)
  end

  def set_chart
    @chart = Chart.find(params[:id])
  end

end
