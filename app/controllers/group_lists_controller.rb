class GroupListsController < ApplicationController
  before_action :set_user, :authorized?

  def create
    @group_list = current_user.group_lists.create(params_group_list)
    render json: { group_list: @group_list } if @group_list.save!
  end

  def index
    render json: {
      groups: GroupList.where(user_id: current_user.id)
    }
  end

  def update
    @group_list = GroupList.find(params[:id])
    @group_list.update(params_group_list)
    render json: { group_list: @group_list }
  end

  def destroy
    @group_list = GroupList.find(params[:id])
    @group_list.destroy
    render json: { group_list: @group_list }
  end

  def params_group_list
    params.require(:group_list).permit(:name, :color)
  end

  
end
