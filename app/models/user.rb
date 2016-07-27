class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   has_one :bal_quiz
   has_one :flex_quiz
   has_one :bod_quiz
   has_one :per_quiz
   has_one :swing_book
   
end
