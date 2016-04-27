class QuizBs < ActiveRecord::Base
  before_save :set_bscode

  def set_bscode
    self.bscode = "#{self.bs01}#{self.bs02}#{self.bs03}-#{self.bs04}#{self.bs05}#{self.bs06}"
  end

  belongs_to :user
  validates :user, presence: true
end
