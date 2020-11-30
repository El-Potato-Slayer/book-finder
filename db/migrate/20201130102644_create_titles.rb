class CreateTitles < ActiveRecord::Migration[6.0]
  def change
    create_table :titles do |t|
      t.text :description
      t.string :format
      t.float :rating
      t.float :price
      t.references :author, null: false, foreign_key: true
      t.references :publisher, null: false, foreign_key: true
      t.string :date

      t.timestamps
    end
  end
end
