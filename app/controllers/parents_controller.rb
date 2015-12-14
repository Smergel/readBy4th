class ParentsController < ApplicationController
  before_action :set_parent, only: [:show, :edit, :update, :destroy]
  def index
  end

  def show
    @parent = Parent.find(current_user.parent_id)
    @reading = Reading.new
  end

  def participant_stats 
    @reading = Reading.new(reading_params)
    @reading.save
    redirect_to parent_path(current_user.parent_id)
  end

  def edit
  end

  def update
  end

  def new
    @parent = Parent.new
  end

  def create
    @parent = Parent.new(parent_params)

    respond_to do |format|
      # @parent.parent_id = current_user.parent_id
      if @parent.save
        format.html { redirect_to "/users/new_parent", notice: 'parent was successfully created.' }
        format.json { render :show, status: :created, location: @parent }
      else
        format.html { render :new }
        format.json { render json: @parent.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @parent.update(parent_params)
        format.html { redirect_to @parent, notice: 'Parent was successfully updated.' }
        format.json { render :show, status: :ok, location: @parent }
      else
        format.html { render :edit }
        format.json { render json: @parent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parent/1
  # DELETE /parent/1.json
  def destroy
    @parent.destroy
    respond_to do |format|
      format.html { redirect_to partners_url, notice: 'Parent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_parent
      @parent = Parent.find(params[:id])
    end

    def parent_params
      params.require(:parent).permit(:parent_first_name, :parent_last_name, :email, :child_first_name, :child_last_name, :home_address, :zip_code, :child_grade, :school)
    end

    def reading_params
      params.require(:reading).permit(:hours_individual, :hours_instruction, :books, :book_title, :participant_id)
    end
end
