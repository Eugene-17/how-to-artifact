# # encoding: utf-8
#
environment_seed_file = File.join(Rails.root, 'db', 'seeds', "#{Rails.env}.rb")

def seed_image(file_name)
  File.open(File.join(Rails.root, "/app/assets/images/#{file_name}"))
end


# user_list = [
#     ["Admin", "admin@gmail.com", "123456", "123456", 1],
#     ["Binh", "Binh@gmail.com", "123456", "123456", 0]
# ]
#
# user_list.each do |name, mail, password, password_confirmation, role|
#   User.create(nickname: name, email: mail, password: password, password_confirmation: password_confirmation,
#               role: role)
# end
#
# category_list = [
#     "News",
#     "Guides",
#     "Discussion",
#     "Trivia",
#     "Market",
# ]
#
#
# category_list.each do |name|
#   Category.create(category_name: name)
# end
#
# post_list = [
#     [1,
#      'new',
#      'new',
#      '123',
#      true,
#      '1.jpg'
#     ],
#     [2,
#      'guide',
#      'guide',
#      '123',
#      true,
#      '2.jpg'
#     ]
# ]
#
# post_list.each do |category_id, title, snippet, article, featured, thumbnail|
#   Post.create(category_id: category_id, user_id: 1, title: title, snippet: snippet, content: article, featured: featured, thumbnail: seed_image(thumbnail))
# end

banner_list =[
    [
        'banner1.png','http://www.howtoartifact.com/',
    ],
    [
        '1.jpg','http://www.howtoartifact.com/',
    ],
    [
        '2.jpg','http://www.howtoartifact.com/',
    ],
    [
        '3.jpg','http://www.howtoartifact.com/',
    ],
    [
        '4.jpg','http://www.howtoartifact.com/',
    ],
]

banner_list.each do |image_url,link|
  Banner.create(image: seed_image(image_url),link:link)
end