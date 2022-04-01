class AddressesController < ApplicationController

  def new
    @address = Address.new
  end

  def show
    @address = Address.find(params[:id])
    gon.address = @address
  end

  def create
    @address = Address.new(address_params)
    @address.user_id = current_user.id

    if @address.save
      redirect_to address_path(@address), notice: "You have created book successfully."
    else
      render 'new'
    end
  end

  private

  def address_params
    params.require(:address).permit(:name,:address,:post_code)
  end
end
