require 'rails_helper'

RSpec.describe Wine, type: :model do

  it "is not valid with nil" do
    wine= Wine.create(name: nil)
    expect(wine).to_not be_valid
  end

  it "is not valid with "" " do
    wine= Wine.create(name: "")
    expect(wine).to_not be_valid
  end

  it "is not valid with 'Carmenere' " do
    wine= Wine.create(name: "Carmenere")
    expect(wine).to be_valid
  end
  
end
