class BalQuiz < ActiveRecord::Base
  before_save :set_bal_code

  def set_bal_code
    self.bal_code = "#{self.bal01}#{self.bal02}#{self.bal03}-#{self.bal04}#{self.bal05}#{self.bal06}"
  end

  belongs_to :user
  validates :user, presence: true
end
