class AddCallToNumbers < ActiveRecord::Migration[6.0]
  def change
    add_column :numbers, :call, :bool
  end
end
