class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
    # @bookmark = Boookmark.new
  end

  def new
    @list = List.new
  end


  # def create
  #     @list = List.new(listt_params)
  #     if @list.save
  #       redirect_to list(@list)
  #     else
  #       render "new"
  #     end
  # end

  # private

  # def list_params
  #   params.require(:list).permit(:name, :bookmark, :movie)
  # end
end
