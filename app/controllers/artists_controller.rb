class ArtistsController < ApplicationController
    before_action :set_artist, only: [:show, :edit, :update]
    def index
        @artists = Artist.all
    end

    def show
        
    end

    def new
        @artist = Artist.new
    end

    def create
        @artist = Artist.new(artist_params)
        if @artist.valid?
           @artist.save
           redirect_to artist_path(@artist)
        else
            flash[:my_errors]=@artist.errors.full_messages
            redirect_to new_artist_path
        end
    end

    def edit
    end

    def update
        @artist.update(artist_params)
        if @artist.valid?
            @artist.save
            redirect_to artist_path(@artist)
         else
             flash[:my_errors]=@artist.errors.full_messages
             redirect_to new_artist_path
         end
    end

    private

    def artist_params
        params.require(:artist).permit(:name, :title, :age)
    end
    
    def set_artist
        @artist = Artist.find(params[:id])
    end

end
