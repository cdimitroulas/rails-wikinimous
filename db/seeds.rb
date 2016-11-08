10.times do
  Article.create(tite: Faker::Hipster.word, content: Faker::Hipster.paragraph)
end
