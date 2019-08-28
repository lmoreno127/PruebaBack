class PeliculasController < ApplicationController
    protect_from_forgery unless:->{request.format.json?}
    def create
        pelicula = Pelicula.new(pelicula_params)
        if pelicula.save! 
           render json:{}, status: :ok
        else
          message =  {error: pelicula.errors.full_messages.to_sentence}
          render json:{}, status: :not_acceptable
        end
      end
      def index
        @peliculas = Pelicula.all
        render json:@peliculas
      end
      
      private
      def pelicula_params
       params.permit(:titulo,:sinopsis,:posterurl,:startDate,:endDate)
      end
end
