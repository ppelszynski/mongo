class UsersController < ApplicationController

  def create
    @adress = user.adresses.new(adress_params)

    respond_to do |format|
      if @adress.save
        format.html { redirect_to user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: user }
      else
        format.html { render :new }
        format.json { render json: user.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def user
      user ||= User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adress_params
      params.require(:adress).permit(:name, :email)
    end
end
