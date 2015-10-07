class EatsController < ApplicationController
  before_action :find_eat, only: [:show, :destroy, :edit, :update]

  def index
    @eats = Eat.all.order("created_at DESC")
  end

  def create
    @eat = Eat.new(eat_params)
    if @eat.save
      redirect_to @eat, notice: "Eat is ready for Mmm..."
    else 
      render 'new'
    end
  end

  def new
    @eat = Eat.new
  end

  def show
  end

  def update 
    if @eat.update(eat_params)
      redirect_to @eat, notice: "Eat was updated"
    else 
      render 'edit'
    end
  end

  def destroy
    @eat.destroy
    redirect_to root_path, notice: "Eat was deleted"
  end

  def edit
  end 

  private 

  def eat_params
    params.require(:eat).permit(:title, :description)
  end

  def find_eat
    @eat = Eat.find(params[:id])
  end
end
