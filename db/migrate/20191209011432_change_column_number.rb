class ChangeColumnNumber < ActiveRecord::Migration[6.0]
  def change
    change_column :numbers, :my_number, :string
    change_column :numbers, :your_number, :string
  end
end
