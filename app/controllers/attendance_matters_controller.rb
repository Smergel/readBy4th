class AttendanceMattersController < ApplicationController
  def new
    @attendance_matters = AttendanceMatter.new
  end

  def create
    @attendance_matters = AttendanceMatter.new(attendance_matters_params)
    @attendance_matters.user_id = current_user
    @attendance_matters.partner_id = current_user.partner_id
    @attendance_matters.save
    redirect_to partner_path(current_user.partner_id)
  end

  def update
  end

  def destroy
  end

  private
    def attendance_matters_params
      params.require(:attendance_matter).permit(:absences, :asthma, :reason, :excused, :participant_id)
    end
end
