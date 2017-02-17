class First < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :fname
      t.string :lname
      t.string :email, limit: 50
      t.string :password
      t.integer :admin_level, default: 1
    end

    add_index :users, :email, unique: true

    create_table :problems do |t|
      t.integer :user_id
      t.string :description
    end

  end
end
