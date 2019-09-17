class AddMoreFieldsToCars < ActiveRecord::Migration[5.1]
  def change
    add_column :cars, :price, :decimal
    add_column :cars, :color, :string
    add_column :cars, :mileage, :integer
    add_column :cars, :image_file_name, :string, default: ""
    add_column :cars, :description, :text
  end
end
