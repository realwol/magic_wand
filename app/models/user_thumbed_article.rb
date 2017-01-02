class UserThumbedArticle < ApplicationRecord
  belongs_to :user
  belongs_to :article

  def self.thumbed_up? user_id, article_id
    !UserThumbedArticle.find_by(user_id: user_id, article_id: article_id).present?
  end
end
