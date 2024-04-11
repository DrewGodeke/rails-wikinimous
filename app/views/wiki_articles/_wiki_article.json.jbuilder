json.extract! wiki_article, :id, :title, :content, :created_at, :updated_at
json.url wiki_article_url(wiki_article, format: :json)
