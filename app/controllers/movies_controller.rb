class MoviesController < ApplicationController
    def index
        @movies = Movie.all
    end
    
    def show
        id = params[:id] # retrieve movie ID from URI rout
        @movie = Movie.find(id) # look up movie by unique ID
        #will render app/views/movies/show.html.haml by default
    end
end

    def new
        @movie = Movie.new
        #default: render 'new' template
    end
    
    def create
        @movies = Movie.create!(movie_params)
        flash[:notice] = "# {@movie.title} was successfully created."
        redirect_to movies_path
    end
    