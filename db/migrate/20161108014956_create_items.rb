class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.text :name
      t.string :body
      t.text :artform
      t.text :portfolio
      t.text :section

      t.timestamps null: false
    end
  end
end
