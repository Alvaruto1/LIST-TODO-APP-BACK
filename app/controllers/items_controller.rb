class ItemsController < ApplicationController
  def create
    group_list = GroupList.find_by(id: params[:group_list_id])
    list = group_list.lists.find_by(id: params[:list_id])
    item = list.items.create(params_item)
    item.state = State.find_by(name: params[:item][:state])
    item.save
    item['state'] = item.state
    render json: {
      item: item
    }
  end

  def index
    group_list = GroupList.find_by(id: params[:group_list_id])
    list = group_list.lists.find_by(id: params[:list_id])
    items = list.items
    items.each do |item|
      item['state'] = item.state
    end
    render json: {
      items: items
    }
  end

  def update
    group_list = GroupList.find_by(id: params[:group_list_id])
    list = group_list.lists.find_by(id: params[:list_id])
    item = list.items.find(params[:id])
    item.update(description: params[:item][:description])
    item.state = State.find_by(name: params[:item][:state])
    item.save
    item['state'] = item.state
    render json: {
      item: item
    }
  end

  def destroy
    group_list = GroupList.find_by(id: params[:group_list_id])
    list = group_list.lists.find_by(id: params[:list_id])
    item = list.items.find(params[:id])
    item.destroy
    render json: {
      item: item
    }
  end

  def params_item
    params.require(:item).permit(:description, :state)
  end
end
