class SwingBook < ActiveRecord::Base
  before_save :set_swing_code

  def set_swing_code
    self.swing_code = "#{self.swing01}#{self.swing02}#{self.swing03}-#{self.swing04}#{self.swing05}#{self.swing06}-#{self.swing07}#{self.swing08}#{self.swing09}#{self.swing10}"
  end

  belongs_to :user
  validates :user, presence: true
end
