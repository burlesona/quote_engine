class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
    	t.text :content
    	t.text :context
      t.timestamps
    end
  end
end
