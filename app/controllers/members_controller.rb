class MembersController < ApplicationController
    # key : @nameinplural : reference to table row 
    # @nameinsingle : reference to model. 
    # return all members 
    def index
        #referencing the book table 
        #before many to many
    #  @members = Member.all
    #  render json: @members
     #after many to many join table : adding join table and adding books owned info
     @members = Member.all
     render json: @members, include: [:book_members, :books]
    # render json: @members, include: [:book_members, :books.as_json(only: [:id, :name])]

    end

    #return specific member
    def show 
       @member = Member.find(params[:id])
       render json: @member
    end

    #create a member 
    def create
    @member = Member.create(name: params[:name], gender: params[:gender], phoneNumber: params[:phoneNumber])
    render json: @member
    end 

    #update a member 
    def update 
     @member = Member.find(params[:id])
     @member.update(name: params[:name], gender: params[:gender], phoneNumber: params[:phoneNumber]) 
     render json: "#{@member.name} has been updated!"
    end 

    #destroy a member 
    def destroy
        @member = Member.find(params[:id])
        @member.destroy
        render json: "#{@member.name} has been deleted!"
    end 
end
