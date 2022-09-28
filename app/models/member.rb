class Member < ApplicationRecord
    # this syntax causes an error if the seed data is run why ? 
    # answer   : symbol syntax is wrong 
#    has_many: book_members
#    has_many: books, through: :book_members 
# correct syntax as follows
has_many :book_members
has_many :books, through: :book_members 
end
