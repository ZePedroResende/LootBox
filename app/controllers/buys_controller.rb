class BuysController < ApplicationController
  before_action :set_buy, only: [:show, :edit, :update, :destroy]

  # GET /buys
  def index
    @buys = Buy.all
  end

  # GET /buys/1
  def show
  end

  # GET /buys/new
  def new
    @buy = Buy.new
  end

  # GET /buys/1/edit
  def edit
  end

  # POST /buys
  def create
    @buy = Buy.new(buy_params)

    if @buy.save
      redirect_to @buy, notice: 'Buy was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /buys/1
  def update
    if @buy.update(buy_params)
      redirect_to @buy, notice: 'Buy was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /buys/1
  def destroy
    @buy.destroy
    redirect_to buys_url, notice: 'Buy was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_buy
      @buy = Buy.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def buy_params
      params.require(:buy).permit(:user_id, :box_id)
    end
end
