class PortfolioController < ApplicationController
  before_action :set_portfolio, only: [:show, :edit, :update, :destroy]

  def index
    @portfolio = Portfolio.all
  end

  def show
  end

  def new
    @portfolio = Portfolio.new
  end

  def edit
  end

  def create
    @portfolio = Portfolio.new(portfolio_params)
    if @portfolio.save
      redirect_to portfolios_path
    else
      render :new
    end
  end

  def update
    if @portfolio.update(portfolio_params)
      redirect_to portfolios_path
    else
      render :edit
    end
  end

  def destroy
    @portfolio.destroy
    redirect_to portfolios_path

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_portfolio
      @portfolio = Portfolio.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def portfolio_params
      params.require(:portfolio).permit(:style)
    end

end
