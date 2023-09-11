class ChangeDisikesDefault < ActiveRecord::Migration[7.0]
  def change
    change_column_default(:preferences, :dislike, "")
  end
end
