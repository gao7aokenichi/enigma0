class Comment < ApplicationRecord
  belongs_to :enigma
  belongs_to :user
end
