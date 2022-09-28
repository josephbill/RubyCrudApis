class BooksController < ApplicationController
    def index
        #referencing the book table 
        #before many to many
    #  @members = Member.all
    #  render json: @members
     #after many to many join table : adding join table and adding books owned info
     @books = Book.all
     render json: @books
    end

      #create a member 
      def create
        @book = Book.create(name: params[:name], rentedTo: params[:rentedTo])
        render json: @book
        end 
end
