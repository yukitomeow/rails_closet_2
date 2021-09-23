class CreateItemOrganizings < ActiveRecord::Migration[6.1]
  def change
    create_table :item_organizings do |t|
      t.string :item
      t.string :color
      t.string :season

      t.timestamps
    end
  end
end
