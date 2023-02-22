require "application_system_test_case"

class LivrosTest < ApplicationSystemTestCase
  setup do
    @livro = livros(:one)
  end

  test "visiting the index" do
    visit livros_url
    assert_selector "h1", text: "Livros"
  end

  test "should create livro" do
    visit livros_url
    click_on "New livro"

    fill_in "Autor", with: @livro.autor
    fill_in "Descricao", with: @livro.descricao
    fill_in "Nota", with: @livro.nota
    fill_in "Text", with: @livro.text
    fill_in "Titulo", with: @livro.titulo
    click_on "Create Livro"

    assert_text "Livro was successfully created"
    click_on "Back"
  end

  test "should update Livro" do
    visit livro_url(@livro)
    click_on "Edit this livro", match: :first

    fill_in "Autor", with: @livro.autor
    fill_in "Descricao", with: @livro.descricao
    fill_in "Nota", with: @livro.nota
    fill_in "Text", with: @livro.text
    fill_in "Titulo", with: @livro.titulo
    click_on "Update Livro"

    assert_text "Livro was successfully updated"
    click_on "Back"
  end

  test "should destroy Livro" do
    visit livro_url(@livro)
    click_on "Destroy this livro", match: :first

    assert_text "Livro was successfully destroyed"
  end
end
