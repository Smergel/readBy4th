class CommunityLeadersController < ApplicationController
  before_action :set_leader, only: [:show, :edit, :update, :destroy]
  def index
  end

  def show
    @leader=Leader.find(params[:id])

    @event = Event.where(leader_id: params[:id]).last(5)
  end

  def create_event
    @event = Event.new(event_params)
    @event.leader_id = current_user.leader_id
    if @event.save 
      redirect_to community_leader_path(current_user.leader_id)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def new
    @leader = Leader.new
  end

  def create
    @leader = Leader.new(leader_params)
    if @leader.save
      redirect_to "/users/new_leader"
    else
      render :new
    end
  end

  def update
    respond_to do |format|
      if @leader.update(leader_params)
        format.html { redirect_to @leader, notice: 'leader was successfully updated.' }
        format.json { render :show, status: :ok, location: @leader }
      else
        format.html { render :edit }
        format.json { render json: @leader.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leaders/1
  # DELETE /leaders/1.json
  def destroy
    @leader.destroy
    respond_to do |format|
      format.html { redirect_to leaders_url, notice: 'leader was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def set_leader
      @leader = Leader.find(params[:id])
    end

  def leader_params
    params.require(:leader).permit(:fname, :lname, :zip_code, :number, :address, :logo)
  end

  def event_params
    params.require(:event).permit(:title, :description, :date)
  end
end
