class RenameReviewTable < ActiveRecord::Migration[7.0]
  def change
    rename_table :reveiws, :reviews
  end
end
