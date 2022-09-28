class Book < ApplicationRecord
    #one to many
    #belongs_to :member
    #many to many
    has_many :book_members
    has_many :members, through: :book_members
end
