# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_list = [
    ["Binh", "Binh@gmail.com", "123456", "123456", 0],
    ["Admin", "admin@gmail.com", "123456", "123456", 1]
]

user_list.each do |name, mail, password, password_confirmation, role|
  User.create(firstname: name, email: mail, password: password, password_confirmation: password_confirmation,
              role: role)
end

category_list = [
    "News",
    "Basic Guides",
    "Advanced Guides",
    "Strategy Discussion",
    "Market",
    "Trivia",
]

category_list.each do |name|
  Category.create(category_name: name)
end

news_list = [
    [1,
     'News',
     'Donec non lorem vestibulum, semper tortor at, imperdiet velit. Sed pharetra odio a mi ullamcorper porta. Vestibulum vel luctus lectus, id sollicitudin felis. Nam rutrum, libero eu varius dignissim, metus ex mollis leo, nec suscipit libero mauris in orci.',
     'Pellentesque tortor turpis, tincidunt a leo id, dictum malesuada enim. In vitae commodo quam, sit amet egestas neque. Duis eget ex tempus, consequat nunc posuere, venenatis odio. Suspendisse interdum nibh malesuada dui egestas elementum. Morbi cursus imperdiet dui quis consequat. Nullam ante nisi, scelerisque at malesuada vitae, viverra eget libero. Maecenas finibus justo libero, ut pretium massa laoreet id. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.',
     true
    ],
[1,
 'Basic Guides',
 'Donec non lorem vestibulum, semper tortor at, imperdiet velit. Sed pharetra odio a mi ullamcorper porta. Vestibulum vel luctus lectus, id sollicitudin felis. Nam rutrum, libero eu varius dignissim, metus ex mollis leo, nec suscipit libero mauris in orci.',
 'Pellentesque tortor turpis, tincidunt a leo id, dictum malesuada enim. In vitae commodo quam, sit amet egestas neque. Duis eget ex tempus, consequat nunc posuere, venenatis odio. Suspendisse interdum nibh malesuada dui egestas elementum. Morbi cursus imperdiet dui quis consequat. Nullam ante nisi, scelerisque at malesuada vitae, viverra eget libero. Maecenas finibus justo libero, ut pretium massa laoreet id. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.',
 true
],
[1,
 'Advanced Guides',
 'Donec non lorem vestibulum, semper tortor at, imperdiet velit. Sed pharetra odio a mi ullamcorper porta. Vestibulum vel luctus lectus, id sollicitudin felis. Nam rutrum, libero eu varius dignissim, metus ex mollis leo, nec suscipit libero mauris in orci.',
 'Pellentesque tortor turpis, tincidunt a leo id, dictum malesuada enim. In vitae commodo quam, sit amet egestas neque. Duis eget ex tempus, consequat nunc posuere, venenatis odio. Suspendisse interdum nibh malesuada dui egestas elementum. Morbi cursus imperdiet dui quis consequat. Nullam ante nisi, scelerisque at malesuada vitae, viverra eget libero. Maecenas finibus justo libero, ut pretium massa laoreet id. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.',
 true
],
[1,
 'Strategy Discussion',
 'Donec non lorem vestibulum, semper tortor at, imperdiet velit. Sed pharetra odio a mi ullamcorper porta. Vestibulum vel luctus lectus, id sollicitudin felis. Nam rutrum, libero eu varius dignissim, metus ex mollis leo, nec suscipit libero mauris in orci.',
 'Pellentesque tortor turpis, tincidunt a leo id, dictum malesuada enim. In vitae commodo quam, sit amet egestas neque. Duis eget ex tempus, consequat nunc posuere, venenatis odio. Suspendisse interdum nibh malesuada dui egestas elementum. Morbi cursus imperdiet dui quis consequat. Nullam ante nisi, scelerisque at malesuada vitae, viverra eget libero. Maecenas finibus justo libero, ut pretium massa laoreet id. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.',
 true
],
    [1,
     'Market',
     'Donec non lorem vestibulum, semper tortor at, imperdiet velit. Sed pharetra odio a mi ullamcorper porta. Vestibulum vel luctus lectus, id sollicitudin felis. Nam rutrum, libero eu varius dignissim, metus ex mollis leo, nec suscipit libero mauris in orci.',
     'Pellentesque tortor turpis, tincidunt a leo id, dictum malesuada enim. In vitae commodo quam, sit amet egestas neque. Duis eget ex tempus, consequat nunc posuere, venenatis odio. Suspendisse interdum nibh malesuada dui egestas elementum. Morbi cursus imperdiet dui quis consequat. Nullam ante nisi, scelerisque at malesuada vitae, viverra eget libero. Maecenas finibus justo libero, ut pretium massa laoreet id. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.',
     true
    ],
    [1,
     'Trivia',
     'Donec non lorem vestibulum, semper tortor at, imperdiet velit. Sed pharetra odio a mi ullamcorper porta. Vestibulum vel luctus lectus, id sollicitudin felis. Nam rutrum, libero eu varius dignissim, metus ex mollis leo, nec suscipit libero mauris in orci.',
     'Pellentesque tortor turpis, tincidunt a leo id, dictum malesuada enim. In vitae commodo quam, sit amet egestas neque. Duis eget ex tempus, consequat nunc posuere, venenatis odio. Suspendisse interdum nibh malesuada dui egestas elementum. Morbi cursus imperdiet dui quis consequat. Nullam ante nisi, scelerisque at malesuada vitae, viverra eget libero. Maecenas finibus justo libero, ut pretium massa laoreet id. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.',
     true
    ]
]


news_list.each do |category_id, title, snippet, article, featured|
  Post.create(category_id: category_id, title: title, snippet: snippet, content: article, featured: featured)
end

(1..24).each do
  category_id = 1
  title = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'
  snippet = 'Donec non lorem vestibulum, semper tortor at, imperdiet velit. Sed pharetra odio a mi ullamcorper porta. Vestibulum vel luctus lectus, id sollicitudin felis. Nam rutrum, libero eu varius dignissim, metus ex mollis leo, nec suscipit libero mauris in orci.'
  article = 'Pellentesque tortor turpis, tincidunt a leo id, dictum malesuada enim. In vitae commodo quam, sit amet egestas neque. Duis eget ex tempus, consequat nunc posuere, venenatis odio. Suspendisse interdum nibh malesuada dui egestas elementum. Morbi cursus imperdiet dui quis consequat. Nullam ante nisi, scelerisque at malesuada vitae, viverra eget libero. Maecenas finibus justo libero, ut pretium massa laoreet id. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.'
  Post.create(category_id: category_id, title: title, snippet: snippet, content: article)
end

# news_image_list = [
#     [
#         '1.jpg',
#         1
#     ],
#     [
#         '2.jpg',
#         2
#     ],
#     [
#         '3.jpg',
#         3
#     ],
#     [
#         '4.jpg',
#         4
#     ],
#     [
#         '5.jpg',
#         5
#     ],
# ]
#
# news_image_list.each do |image_url, news_id|
#   NewsImage.create(image_url: image_url, news_id: news_id)
# end

