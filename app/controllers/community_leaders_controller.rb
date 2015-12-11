class CommunityLeadersController < ApplicationController
  def index
  end

  def show
  end

  def edit
  end

  def update
  end

  def new
    @community_leaders = Leader.new
  end

  def create
    @leader = Leader.new(leader_params)
    if @leader.save
      redirect_to "/users/new_leader"
    else
      render :new
    end
  end

  def destroy
  end
  private
  def leader_params
    params.require(:leader).permit(:fname, :lname, :zip_code, :number, :address)
  end

end
