require 'test_helper'

class BooksControllerTest < ActionController::TestCase
  setup do
    @book = books(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:books)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create book" do
    assert_difference('Book.count') do
      post :create, book: { Cena_sprzedazy: @book.Cena_sprzedazy, Cena_zakupu: @book.Cena_zakupu, ISBN: @book.ISBN, Ilosc_egzemplarzy: @book.Ilosc_egzemplarzy, Nr_rachunku: @book.Nr_rachunku, Rok_wydania: @book.Rok_wydania, Stawka_VAT: @book.Stawka_VAT, Uwagi: @book.Uwagi, autor: @book.autor, index: @book.index, tytul: @book.tytul, wydawnictwo: @book.wydawnictwo }
    end

    assert_redirected_to book_path(assigns(:book))
  end

  test "should show book" do
    get :show, id: @book
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @book
    assert_response :success
  end

  test "should update book" do
    patch :update, id: @book, book: { Cena_sprzedazy: @book.Cena_sprzedazy, Cena_zakupu: @book.Cena_zakupu, ISBN: @book.ISBN, Ilosc_egzemplarzy: @book.Ilosc_egzemplarzy, Nr_rachunku: @book.Nr_rachunku, Rok_wydania: @book.Rok_wydania, Stawka_VAT: @book.Stawka_VAT, Uwagi: @book.Uwagi, autor: @book.autor, index: @book.index, tytul: @book.tytul, wydawnictwo: @book.wydawnictwo }
    assert_redirected_to book_path(assigns(:book))
  end

  test "should destroy book" do
    assert_difference('Book.count', -1) do
      delete :destroy, id: @book
    end

    assert_redirected_to books_path
  end
end
