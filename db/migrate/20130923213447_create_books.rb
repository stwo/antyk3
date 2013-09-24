class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.integer :index
      t.string :tytul
      t.string :autor
      t.string :wydawnictwo
      t.string :Rok_wydania
      t.integer :Ilosc_egzemplarzy
      t.decimal :Cena_zakupu
      t.decimal :Cena_sprzedazy
      t.string :Nr_rachunku
      t.string :Uwagi
      t.string :ISBN
      t.decimal :Stawka_VAT

      t.timestamps
    end
  end
end
