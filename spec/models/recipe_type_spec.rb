require 'rails_helper'

RSpec.describe RecipeType, type: :model do
  it 'shout not be valid' do
    recipe_type = RecipeType.new(name: '')
  
    expect(recipe_type.valid?).to eq false
  end
end