class RenameYourNumberColumnToNumbers < ActiveRecord::Migration[6.0]
  def change
    rename_column :numbers, :your_number, :opponent_number
  end
end
