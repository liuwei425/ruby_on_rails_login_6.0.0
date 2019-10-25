class AddCountryToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :country, :string
  end
end
