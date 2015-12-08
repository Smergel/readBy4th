class ParentsController < ApplicationController
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

  def destroy
  end

  private
    def parent_params
      params.require(:parent).permit(:parent_first_name, :parent_last_name, :email, :child_first_name, :child_last_name, :home_address, :zip_code, :child_grade, :school)
    end

    def reading_params
      params.require(:reading).permit(:hours_individual, :hours_instruction, :books, :book_title, :participant_id)
    end
end
