class AddFunctionRelatedColumns < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :score, :float
    add_column :users, :role, :integer
    add_column :users, :thumb_time_left, :integer
    add_column :articles, :regret_count, :integer
  end
end
