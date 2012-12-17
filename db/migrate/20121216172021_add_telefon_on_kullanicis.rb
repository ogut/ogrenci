class AddTelefonOnKullanicis < ActiveRecord::Migration
  def up
    add_column :kullanicis, :telefon, :string
  end

  def down
  end
end
