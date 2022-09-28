class BookMembersController < ApplicationController
    def index
     @book_members = BookMember.all
     render json: @book_members
    end
      #create a relationship 
      def create
        @book_members = BookMember.create(book_id: params[:book_id], member_id: params[:member_id])
        render json: @book_members
        end 
end
