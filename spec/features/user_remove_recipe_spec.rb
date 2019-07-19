require 'rails_helper'

feature 'user_remove_helper' do
  scenario 'successfully' do
    recipe = Recipe.create(title: 'Bolo de Cenoura', recipe_type: 'Sobremesa',
                           cuisine: 'Brasileira', difficulty: 'Médio',
                           cook_time: 60,
                           ingredients: 'Farinha, açucar, cenoura',
                           cook_method: 'Cozinhe a cenoura, corte em pedaços pequenos, misture com o restante dos ingredientes')
  
    visit root_path
    click_on 'Bolo de Cenoura'
    #click_on p.title
    click_on 'Destroy'

    #assert
    expect(current_path).to eq(root_path)
    expect(page).not_to have_content('Bolo de Cenoura')
  end                      
end