class AddPriceToExperiences < ActiveRecord::Migration[6.0]
  def change
	add_column :experiences, :price, :integer
  end
end
