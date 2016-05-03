class User < ActiveRecord::Base
  before_save { self.email = email.downcase }

  validates :name, length: { minimum: 1, maximum: 100 }, presence: true
  validates :password, presence: true, length: { minimum: 6 }, unless: :password_digest
  validates :password, length: { minimum: 6 }, allow_blank: true
  validates :email,
            presence: true,
            uniqueness: { case_sensitive: false },
            length: { minimum: 3, maximum: 254 }

  has_secure_password

  has_one :bal_quiz
  has_one :flex_quiz
  has_one :bod_quiz
  has_one :per_quiz
  has_one :swing_book

end
