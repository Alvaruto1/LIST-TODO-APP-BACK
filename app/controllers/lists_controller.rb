class ListsController < ApplicationController
  before_action :set_user, :authorized?

  def create
    group_list = GroupList.find_by(id: params[:group_list_id])
    list = group_list.lists.create(params_list)
    render json: {
      list: list
    }
  end

  def index
    group_list = GroupList.find_by(id: params[:group_list_id])
    lists = group_list.lists
    render json: {
      lists: lists
    }
  end

  def update
    @list = List.find(params[:id])
    @list.update(params_list)
    render json: { list: @list }
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    render json: { list: @list }
  end

  def params_list
    params.require(:list).permit(:title)
  end
end
