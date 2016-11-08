10.times do
  Article.create(title: Faker::Hipster.word, content: Faker::Hipster.paragraph)
end
