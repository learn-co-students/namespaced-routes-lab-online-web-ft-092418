class Admin::PreferencesController < ApplicationController
    def index
        @preferences = Preference.all
    end

    def show
        @preference = Preference.find(params[:id])
    end

    def new
        @preference = Preference.new
    end

    def create
        @preference = Preference.create(preference_params)
        redirect_to admin_preference_path(@preference)
    end

    def edit
        @preference = Preference.find(params[:id])
    end

    def update
        @preference = Preference.find(params[:id])
        @preference.update(preference_params)
        redirect_to admin_preference_path(@preference)
    end

    def destroy
        @preference = Preference.find(params[:id])
        @preference.destroy
        redirect_to admin_preferences_path        
    end

    private
        def preference_params
            params.require(:preference).permit(:allow_create_artists, :allow_create_songs, :song_sort_order, :artist_sort_order)
        end
end