class PerQuiz < ActiveRecord::Base
  before_save :set_per_code

  def set_per_code
    if self.myper_code == nil
      self.per_code = "#{self.iper_code}"
    else
      self.per_code = "#{self.myper_code}"
    end
  end

  belongs_to :user
  validates :user, presence: true
end
