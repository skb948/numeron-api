class CreateResults < ActiveRecord::Migration[6.0]
  def change
    create_table :results do |t|
      t.integer :number_id
      t.string :count
      t.string :number
      t.string :eat
      t.string :bite

      t.timestamps
    end
  end
end
