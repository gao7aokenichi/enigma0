class Enigma < ApplicationRecord
  validates :text, presence: true
  belongs_to :user
  has_many :comments

  def self.search(search)
    if search != ""
      Enigma.where('text LIKE(?)', "%#{search}%")
    else
      Enigma.all
    end
  end
end
