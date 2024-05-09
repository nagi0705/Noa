class NoasController < ApplicationController
  before_action :set_noa, only: [:show, :edit, :update, :destroy]

  def index
    @noas = Noa.all
  end

  def show
  end

  def new
    @noa = Noa.new
  end

  def create
    @noa = Noa.new(noa_params)
    if @noa.save
      redirect_to @noa, notice: 'Noa was successfully created.'
    else
      render :new
    end
  end


  def update
    if @noa.update(noa_params)
      redirect_to @noa, notice: 'Noa was successfully updated.'
    else
      render :edit
    end
  end

  private

  def set_noa
    @noa = Noa.find(params[:id])
  end

  def noa_params
    params.require(:noa).permit(:animal, :kinds)
  end
end
