class SquiresController < ApplicationController
  before_action :set_squire, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @squires = Squire.all
    respond_with(@squires)
  end

  def show
    respond_with(@squire)
  end

  def new
    @squire = Squire.new
    respond_with(@squire)
  end

  def edit
  end

  def create
    @squire = Squire.new(squire_params)
    @squire.save
    respond_with(@squire)
  end

  def update
    @squire.update(squire_params)
    respond_with(@squire)
  end

  def destroy
    @squire.destroy
    respond_with(@squire)
  end

  private
    def set_squire
      @squire = Squire.find(params[:id])
    end

    def squire_params
      params.require(:squire).permit(:title, :description)
    end
end
