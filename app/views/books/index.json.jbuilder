json.array!(@books) do |book|
  json.extract! book, :index, :tytul, :autor, :wydawnictwo, :Rok_wydania, :Ilosc_egzemplarzy, :Cena_zakupu, :Cena_sprzedazy, :Nr_rachunku, :Uwagi, :ISBN, :Stawka_VAT
  json.url book_url(book, format: :json)
end
