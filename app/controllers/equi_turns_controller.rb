class EquiTurnsController < ApplicationController
  # before_action :set_equi_turn, only: [:show, :edit, :update, :destroy]

 
  def index
    @equi_turns = EquiTurn.all
    @user = User.new
  end

  def show
    @equi_turn = EquiTurn.find(params[:id])
  end

 
  def new
    @equi_turn = EquiTurn.new
  end

  
  def edit
    @equi_turn = EquiTurn.find(params[:id])
  end

 
  def create
    @equi_turn = EquiTurn.new(equi_turn_params)

      if @equi_turn.save
        flash[:notice] = "Equi_turn was successfully created."
        redirect_to action: 'index'
      else
        render action: 'new' 
      end
  end


  def update
    @equi_turn = EquiTurn.find(params[:id])

      if @equi_turn.update_attributes(equi_turn_params)
        flash[:notice] = "Equi_turn was successfully updated."
        redirect_to action: 'index'
      else
        render action: 'edit'
      end
  end

 
  def destroy
    @equi_turn = EquiTurn.find(params[:id])
      @equi_turn.destroy
      redirect_to action: 'index'
  end

  private

    def equi_turn_params
      params.require(:equi_turn).permit(:name, :symbol, :owned, :today)
    end

end
