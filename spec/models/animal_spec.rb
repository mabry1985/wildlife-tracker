require 'rails_helper'

describe Animal do
  it { should have_many(:sightings) }
  it ("titleizes the name of an animal") do
    animal = Animal.create({species: "chungie fox"})
    expect(animal.species()).to(eq("Chungie Fox"))
  end
end
