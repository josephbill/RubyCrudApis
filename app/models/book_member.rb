class BookMember < ApplicationRecord
  belongs_to :book
  belongs_to :member
end
