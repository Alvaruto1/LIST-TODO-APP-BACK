class GroupListsController < ApplicationController
  before_action :authenticate_user!

  def create
    puts current_user
    #@group_list = GroupList.new(name: params_group_list[:name], color: params_group_list[:color])
    #@group_list if @group_list.save!
  end

  def show; end

  def update; end

  def destroy; end

  def params_group_list
    params.require(:group_list).permit(:name, :color)
  end
end
