class BachelorettesController < ApplicationController
  # def index
  #
  # end

  def show
    @bachelorette = Bachelorette.find(params[:id])
  end

  # def new
  #
  # end
  # def create
  #
  # end
  # def edit
  #
  # end
  # def update
  #
  # end
  # def destroy
  #
  # end
  # private
  # def _params
  #   params.permit(:)
  # end
end
