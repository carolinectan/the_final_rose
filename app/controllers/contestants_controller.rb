class ContestantsController < ApplicationController
  def index
    @bachelorette = Bachelorette.find(params[:id])
  end

  def show

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
