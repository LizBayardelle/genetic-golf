class FlexQuiz < ActiveRecord::Base
  before_save :set_flex_code

  def set_flex_code
    self.flex_code = "#{self.flex01}#{self.flex02}#{self.flex03}-#{self.flex04}#{self.flex05}#{self.flex06}-#{self.flex07}#{self.flex08}#{self.flex09}#{self.flex10}"
  end

  belongs_to :user
  validates :user, presence: true
end
