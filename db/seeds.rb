# encoding: utf-8

environment_seed_file = File.join(Rails.root, 'db', 'seeds', "#{Rails.env}.rb")

def seed_image(file_name)
  File.open(File.join(Rails.root, "/app/assets/images/#{file_name}"))
end


user_list = [
    ["Admin", "admin@gmail.com", "123456", "123456", 1],
    ["Binh", "Binh@gmail.com", "123456", "123456", 0]
]

user_list.each do |name, mail, password, password_confirmation, role|
  User.create(nickname: name, email: mail, password: password, password_confirmation: password_confirmation,
              role: role)
end

category_list = [
    "News",
    "Basic Guides",
    "Advanced Guides",
    "Strategy Discussion",
    "Trivia",
    "Market",
]

category_list.each do |name|
  Category.create(category_name: name)
end

post_list = [
    [1,
     'How - to - artifact news',
     'Donec non lorem vestibulum, semper tortor at, imperdiet velit. Sed pharetra odio a mi ullamcorper porta. Vestibulum vel luctus lectus, id sollicitudin felis. Nam rutrum, libero eu varius dignissim, metus ex mollis leo, nec suscipit libero mauris in orci.',
     'Pellentesque tortor turpis, tincidunt a leo id, dictum malesuada enim. In vitae commodo quam, sit amet egestas neque. Duis eget ex tempus, consequat nunc posuere, venenatis odio. Suspendisse interdum nibh malesuada dui egestas elementum. Morbi cursus imperdiet dui quis consequat. Nullam ante nisi, scelerisque at malesuada vitae, viverra eget libero. Maecenas finibus justo libero, ut pretium massa laoreet id. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.',
     true
    ],
    [2,
     'Basic Guides',
     'Donec non lorem vestibulum, semper tortor at, imperdiet velit. Sed pharetra odio a mi ullamcorper porta. Vestibulum vel luctus lectus, id sollicitudin felis. Nam rutrum, libero eu varius dignissim, metus ex mollis leo, nec suscipit libero mauris in orci.',
     'Pellentesque tortor turpis, tincidunt a leo id, dictum malesuada enim. In vitae commodo quam, sit amet egestas neque. Duis eget ex tempus, consequat nunc posuere, venenatis odio. Suspendisse interdum nibh malesuada dui egestas elementum. Morbi cursus imperdiet dui quis consequat. Nullam ante nisi, scelerisque at malesuada vitae, viverra eget libero. Maecenas finibus justo libero, ut pretium massa laoreet id. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.',
     true
    ],
    [3,
     'Advanced Guides',
     'Donec non lorem vestibulum, semper tortor at, imperdiet velit. Sed pharetra odio a mi ullamcorper porta. Vestibulum vel luctus lectus, id sollicitudin felis. Nam rutrum, libero eu varius dignissim, metus ex mollis leo, nec suscipit libero mauris in orci.',
     'Pellentesque tortor turpis, tincidunt a leo id, dictum malesuada enim. In vitae commodo quam, sit amet egestas neque. Duis eget ex tempus, consequat nunc posuere, venenatis odio. Suspendisse interdum nibh malesuada dui egestas elementum. Morbi cursus imperdiet dui quis consequat. Nullam ante nisi, scelerisque at malesuada vitae, viverra eget libero. Maecenas finibus justo libero, ut pretium massa laoreet id. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.',
     true
    ],
    [4,
     'Strategy Discussion',
     'Donec non lorem vestibulum, semper tortor at, imperdiet velit. Sed pharetra odio a mi ullamcorper porta. Vestibulum vel luctus lectus, id sollicitudin felis. Nam rutrum, libero eu varius dignissim, metus ex mollis leo, nec suscipit libero mauris in orci.',
     'Pellentesque tortor turpis, tincidunt a leo id, dictum malesuada enim. In vitae commodo quam, sit amet egestas neque. Duis eget ex tempus, consequat nunc posuere, venenatis odio. Suspendisse interdum nibh malesuada dui egestas elementum. Morbi cursus imperdiet dui quis consequat. Nullam ante nisi, scelerisque at malesuada vitae, viverra eget libero. Maecenas finibus justo libero, ut pretium massa laoreet id. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.',
     true
    ],
    [5,
     'Market',
     'Donec non lorem vestibulum, semper tortor at, imperdiet velit. Sed pharetra odio a mi ullamcorper porta. Vestibulum vel luctus lectus, id sollicitudin felis. Nam rutrum, libero eu varius dignissim, metus ex mollis leo, nec suscipit libero mauris in orci.',
     'Pellentesque tortor turpis, tincidunt a leo id, dictum malesuada enim. In vitae commodo quam, sit amet egestas neque. Duis eget ex tempus, consequat nunc posuere, venenatis odio. Suspendisse interdum nibh malesuada dui egestas elementum. Morbi cursus imperdiet dui quis consequat. Nullam ante nisi, scelerisque at malesuada vitae, viverra eget libero. Maecenas finibus justo libero, ut pretium massa laoreet id. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.',
     true
    ],
    [6,
     'Trivia',
     'Donec non lorem vestibulum, semper tortor at, imperdiet velit. Sed pharetra odio a mi ullamcorper porta. Vestibulum vel luctus lectus, id sollicitudin felis. Nam rutrum, libero eu varius dignissim, metus ex mollis leo, nec suscipit libero mauris in orci.',
     'Pellentesque tortor turpis, tincidunt a leo id, dictum malesuada enim. In vitae commodo quam, sit amet egestas neque. Duis eget ex tempus, consequat nunc posuere, venenatis odio. Suspendisse interdum nibh malesuada dui egestas elementum. Morbi cursus imperdiet dui quis consequat. Nullam ante nisi, scelerisque at malesuada vitae, viverra eget libero. Maecenas finibus justo libero, ut pretium massa laoreet id. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.',
     true
    ]
]

post_list.each do |category_id, title, snippet, article, featured|
  Post.create(category_id: category_id, user_id: 1, title: title, snippet: snippet, content: article, featured: featured)
end

(1..24).each do
  category_id = rand(max=6)
  title = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'
  snippet = 'Donec non lorem vestibulum, semper tortor at, imperdiet velit. Sed pharetra odio a mi ullamcorper porta. Vestibulum vel luctus lectus, id sollicitudin felis. Nam rutrum, libero eu varius dignissim, metus ex mollis leo, nec suscipit libero mauris in orci.'
  article = 'Pellentesque tortor turpis, tincidunt a leo id, dictum malesuada enim. In vitae commodo quam, sit amet egestas neque. Duis eget ex tempus, consequat nunc posuere, venenatis odio. Suspendisse interdum nibh malesuada dui egestas elementum. Morbi cursus imperdiet dui quis consequat. Nullam ante nisi, scelerisque at malesuada vitae, viverra eget libero. Maecenas finibus justo libero, ut pretium massa laoreet id. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.'
  Post.create(category_id: category_id, user_id: 1 ,title: title, snippet: snippet, content: article)
end

post_image_list = [
    [
        '1.jpg',
        1
    ],
    [
        '2.jpg',
        2
    ],
    [
        '3.jpg',
        3
    ],
    [
        '4.jpg',
        4
    ],
    [
        '5.jpg',
        5
    ],
]

post_image_list.each do |image_url, post_id|
  PostImage.create(image: seed_image(image_url), post_id: post_id)
end

