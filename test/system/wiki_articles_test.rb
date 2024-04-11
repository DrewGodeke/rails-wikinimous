require "application_system_test_case"

class WikiArticlesTest < ApplicationSystemTestCase
  setup do
    @wiki_article = wiki_articles(:one)
  end

  test "visiting the index" do
    visit wiki_articles_url
    assert_selector "h1", text: "Wiki articles"
  end

  test "should create wiki article" do
    visit wiki_articles_url
    click_on "New wiki article"

    fill_in "Content", with: @wiki_article.content
    fill_in "Title", with: @wiki_article.title
    click_on "Create Wiki article"

    assert_text "Wiki article was successfully created"
    click_on "Back"
  end

  test "should update Wiki article" do
    visit wiki_article_url(@wiki_article)
    click_on "Edit this wiki article", match: :first

    fill_in "Content", with: @wiki_article.content
    fill_in "Title", with: @wiki_article.title
    click_on "Update Wiki article"

    assert_text "Wiki article was successfully updated"
    click_on "Back"
  end

  test "should destroy Wiki article" do
    visit wiki_article_url(@wiki_article)
    click_on "Destroy this wiki article", match: :first

    assert_text "Wiki article was successfully destroyed"
  end
end
