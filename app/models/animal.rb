class Animal < ApplicationRecord
  has_many :sightings, dependent: :destroy
  validates :species, presence: true
  before_save(:titleize_animal)
  private
    def titleize_animal
      self.species = self.species.titleize
    end

end
