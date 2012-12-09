class CreateKullanicis < ActiveRecord::Migration
  def change
    create_table :kullanicis do |t|
      t.string :ad
      t.string :soyad
      t.string :email
      t.text :adres

      t.timestamps
    end
  end
end
