class Article < ApplicationRecord
  belongs_to :user
  has_many :user_thumbed_articles

  def thumb_up
    self.increment!(:regret_count)
  end

  def cancel_thumb_up
    self.decrement!(:regret_count) if self.regret_count > 1
  end
end
