class FitQuiz < ActiveRecord::Base
  before_save :set_fit_code

  def set_fit_code
    self.fit_code = "#{self.fit01}#{self.fit02}#{self.fit03}#{self.fit04}-#{self.fit05}#{self.fit06}#{self.fit07}#{self.fit08}"
  end

  belongs_to :user
  validates :user, presence: true
end
