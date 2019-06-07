class AddBandImage < ActiveRecord::Migration[5.2]
  def change
    add_column :bands, :picture, :string, null: false
  end
end
