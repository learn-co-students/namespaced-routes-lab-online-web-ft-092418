class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def preference
    if p = Preference.find_by_id(1)
      p 
    else 
      Preference.new(allow_create_artists: false, allow_create_songs: false, artist_sort_order: "DESC", song_sort_order: "ASC")
    end
  end
end
