class PortfoliosController < ApplicationController
#before_action :set_artist

  def index
  end

  def show
    @artist = Artist.find(params[:artist_id])

    @portfolio = @artist.portfolios.find(params[:id])
  end


private

  def set_artist
    @artist = Artist.find(params[:artist_id])
  end
end
