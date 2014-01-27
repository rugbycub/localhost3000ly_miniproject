class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :name
      t.string :url
      t.string :code
      t.string :views

      t.timestamps
    end
  end
end
