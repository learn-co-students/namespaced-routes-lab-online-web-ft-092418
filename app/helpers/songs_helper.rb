module SongsHelper
  def order_by_titles(prefrence)
    Song.order(:title, prefrence)
  end
end
