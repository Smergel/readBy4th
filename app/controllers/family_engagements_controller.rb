class FamilyEngagementsController < ApplicationController
  def new
    @family_engagement = FamilyEngagement.new
  end

  def create
    @family_engagement = FamilyEngagement.new(family_engagement_params)
    @family_engagement.user_id = current_user
    @family_engagement.partner_id = current_user.partner_id
    @family_engagement.save
    redirect_to partner_path(current_user.partner_id)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def family_engagement_params
      params.require(:family_engagement).permit(:tweets, :facebook, :instagram, :community_ceners, :public_speech)
    end
end
