class ChangeDataCallToNumber < ActiveRecord::Migration[6.0]
  def change
    change_column :numbers, :call, :integer, using: 'call::integer'
  end
end
