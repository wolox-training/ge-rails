class CreateRents < ActiveRecord::Migration[5.1]
  def change
    create_table :rents do |t|
      t.references :user, foreign_key: true
      t.references :book, foreign_key: true
      t.date :from
      t.date :to

      t.timestamps
    end
  end
end
