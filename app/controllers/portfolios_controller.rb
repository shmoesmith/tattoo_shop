class PortfoliosController < ApplicationController
before_action :set_artist

  def index
  end

  def show
    @portfolio = @artist.portfolios.find(parms[:id])
  end


private

  def set_artist
    @artist = Artist.find(:artist_id)
  end
end
