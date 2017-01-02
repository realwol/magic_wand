class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable

  has_many :user_thumbed_articles
  has_many :articles
  def thumb_up article_id
    self.decrement! :thumb_time_left
    after_thumb_up article_id
  end

  def cancel_thumb_up article_id
    after_cancel_thumb_up article_id
  end

  def can_thumb_up? article_id
    self.thumb_time_left > 0 && UserThumbedArticle.thumbed_up?(self.id, article_id)
  end

  private
  def after_thumb_up article_id
    article = Article.find(article_id)
    article.thumb_up
    UserThumbedArticle.create(user: self, article: article)
  end

  def after_cancel_thumb_up article_id
    article = Article.find(article_id)
    article.cancel_thumb_up
    UserThumbedArticle.where(user: self, article: article).delete_all
  end
end
