require "test_helper"

class WikiArticlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wiki_article = wiki_articles(:one)
  end

  test "should get index" do
    get wiki_articles_url
    assert_response :success
  end

  test "should get new" do
    get new_wiki_article_url
    assert_response :success
  end

  test "should create wiki_article" do
    assert_difference("WikiArticle.count") do
      post wiki_articles_url, params: { wiki_article: { content: @wiki_article.content, title: @wiki_article.title } }
    end

    assert_redirected_to wiki_article_url(WikiArticle.last)
  end

  test "should show wiki_article" do
    get wiki_article_url(@wiki_article)
    assert_response :success
  end

  test "should get edit" do
    get edit_wiki_article_url(@wiki_article)
    assert_response :success
  end

  test "should update wiki_article" do
    patch wiki_article_url(@wiki_article), params: { wiki_article: { content: @wiki_article.content, title: @wiki_article.title } }
    assert_redirected_to wiki_article_url(@wiki_article)
  end

  test "should destroy wiki_article" do
    assert_difference("WikiArticle.count", -1) do
      delete wiki_article_url(@wiki_article)
    end

    assert_redirected_to wiki_articles_url
  end
end
