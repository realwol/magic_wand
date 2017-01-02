class AddDefaultValueForArticleRegretCount < ActiveRecord::Migration[5.0]
  def change
    change_column :articles, :regret_count, :integer, default: 0
  end
end
