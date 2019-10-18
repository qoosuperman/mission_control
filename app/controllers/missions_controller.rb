class MissionsController < ApplicationController
  def index
    @missions = Mission.all
  end

  def new
    @mission = Mission.new
  end

  def create
    @mission = Mission.new(mission_params)
    #因為還沒建後台，先建一個 user 把 mission 都丟給他
    @mission.user = User.first
    if @mission.save
      redirect_to root_path, notice: "新增任務成功！"
    else
      render :new
    end
  end


  private
  def mission_params
    params.require(:mission).permit(:title, :priority, :category)
  end
end
