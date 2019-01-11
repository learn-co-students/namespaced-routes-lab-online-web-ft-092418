class ChangeColumnDataTypeForArtistSort < ActiveRecord::Migration
  def change
    change_column :preferences, :artist_sort_order, :string
  end
end
