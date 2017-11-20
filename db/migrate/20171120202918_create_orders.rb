class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.text :cart
      t.datetime :paid_on
      t.datetime :shipped_on

      t.timestamps
    end
  end
end
