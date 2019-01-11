class ChangeColumnDataType < ActiveRecord::Migration
  def change
    change_column :preferences, :artist_sort_order, :boolean
  end
end
