class AddCodeToNumbers < ActiveRecord::Migration[6.0]
  def change
    add_column :numbers, :code, :string
  end
end
