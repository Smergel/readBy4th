class FamilyEngagementsController < ApplicationController
  def new
    @family_engagement = FamilyEngagement.new
  end

  def create
    @family_engagement = FamilyEngagement.new
    @family_engagement.user_id = current_user
    @family_engagement.partner_id = current_user.partner_id
    @family_engagement.save
    redirect_to '/'
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
