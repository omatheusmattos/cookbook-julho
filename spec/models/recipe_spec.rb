require 'rails_helper'

RSpec.describe Recipe, type: :model do
  it { is_expected.to have_db_column(:title).of_type(:string) }
  it { is_expected.to have_db_column(:recipe_type).of_type(:string) }
  it { is_expected.to have_db_column(:cuisine).of_type(:string) }
  it { is_expected.to have_db_column(:difficulty).of_type(:string) }
  it { is_expected.to have_db_column(:cook_time).of_type(:integer) }
  it { is_expected.to have_db_column(:ingredients).of_type(:text) }
  it { is_expected.to have_db_column(:cook_method).of_type(:text) }
end
  