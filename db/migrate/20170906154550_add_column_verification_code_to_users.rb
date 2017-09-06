class AddColumnVerificationCodeToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :verification_code, :string, null: false
  end
end
