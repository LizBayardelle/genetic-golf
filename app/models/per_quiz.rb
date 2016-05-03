class PerQuiz < ActiveRecord::Base
  before_save :set_per_code

  def set_per_code
    self.per_code = "#{self.myper_code}, #{self.iper_code}"
  end

  belongs_to :user
  validates :user, presence: true
end
