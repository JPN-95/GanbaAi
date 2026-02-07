class AddLevelToTests < ActiveRecord::Migration[7.1]
  def change
    add_column :tests, :level, :string
  end
end
