class ChangeIdeaQualityFromIntegerToString < ActiveRecord::Migration
  def change
    change_column :ideas, :quality, :string
  end
end
