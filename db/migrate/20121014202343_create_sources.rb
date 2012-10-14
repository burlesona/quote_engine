class CreateSources < ActiveRecord::Migration
  def change
    create_table :sources do |t|
      t.string :official_name
      t.string :first_name
      t.string :middle_name
      t.string :title
      t.text :bio
      t.timestamps
    end

    change_table :quotes do |t|
      t.references :source
    end
  end
end
