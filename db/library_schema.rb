class CreateLibrarySchema < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.string :author, null: false
      t.string :status, null: false, default: "Available"

      t.timestamps
    end

    create_table :borrowers do |t|
      t.string :name, null: false

      t.timestamps
    end

    create_table :lending_histories do |t|
      t.references :book, null: false, foreign_key: true
      t.references :borrower, null: false, foreign_key: true
      t.datetime :borrowed_at, null: false
      t.datetime :returned_at

      t.timestamps
    end
  end
end

