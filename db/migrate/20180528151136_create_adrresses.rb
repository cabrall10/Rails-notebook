class CreateAdrresses < ActiveRecord::Migration[5.2]
  def change
    create_table :adrresses do |t|
      t.string :street
      t.string :city
      t.string :state
      t.references :contact, foreign_key: true

      t.timestamps
    end
  end
end
