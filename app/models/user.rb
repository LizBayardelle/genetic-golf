class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   has_one :bal_quiz
   has_one :flex_quiz
   has_one :bod_quiz
   has_one :per_quiz
   has_one :fit_quiz
   has_one :swing_book
   has_many :club_fittings

   before_save :set_current_score

   def set_current_score
     self.g_score_current = g_score_start
   end

   def full_name
     "#{first_name} #{last_name}"
   end

end
