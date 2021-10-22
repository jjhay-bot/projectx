class UsersController < ApplicationController
  load_and_authorize_resource

  before_action :user_params, only: %i[ show edit update ]

  def admin
  end

  def invite
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to root_path, notice: "User was successfully created." }
      else
        format.html { render :admin, status: :unprocessable_entity }
      end
    end
  end

  def show
  end

  def edit
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: "User was successfully updated." }
      else
        render :edit
      end
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # # Only allow a list of trusted parameters through.
  def user_params
    # params.require(:user).permit(:email, :role, :first_name, :last_name)
  end
end
