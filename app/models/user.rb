class User < ActiveRecord::Base
  has_one      :profile
  belongs_to   :partner
  has_many     :posts
  has_many     :attendance_matter
  has_one      :family_engagement
  has_many     :year_round_reading

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # def active_for_authentication?
  #   super && approved?
  # end

  # def inactive_message
  #   if !approved?
  #     :not_approved
  #   else
  #     super
  #   end
  # end

end
