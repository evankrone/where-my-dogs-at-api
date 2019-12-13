# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

walker1 = Walker.create([{imgUrl: 'https://media.istockphoto.com/photos/portrait-of-a-girl-picture-id938709362?k=6&m=938709362&s=612x612&w=0&h=mUQAOuFjTUhvykTbkpXXERePajEWvVqOM2tR3gwS3II=' , name: 'Kim', email: 'kimdogwalker@dog.com', phone: '(917)456-7536', rate: '$35', rating:'★★★★★'}])
walker2 = Walker.create([{imgUrl: 'https://www.peoplespharmacy.com/wp-content/uploads/beautiful-smile.jpg' , name: 'Kristen', email: 'kristenwalker@dog.com', phone: '(718)466-7246', rate: '$35', rating:'★★★★'}])
walker3 = Walker.create([{imgUrl: 'https://st.focusedcollection.com/16485780/i/650/focused_228865700-stock-photo-portrait-happy-woman-dog.jpg' , name: 'Jess', email: 'jessdogwalker@dog.com', phone: '(212)628-9825', rate: '$30', rating:'★★★★'}])
walker4 = Walker.create([{imgUrl: 'https://s3-eu-west-1.amazonaws.com/video.gallereplay.com/production/user_74/picture_17112016100959.jpg' , name: 'James', email: 'jamesdogwalker@dog.com', phone: '(923)623-2336', rate: '$30', rating:'★★★★'}])
walker5 = Walker.create([{imgUrl: 'https://motionarray.imgix.net/preview-80439-Q40OQV191W-high_0010.jpg' , name: 'Mary', email: 'marydogwalker@dog.com', phone: '(212)496-2842', rate: '$35', rating:'★★★★'}])
walker6 = Walker.create([{imgUrl: 'https://image.shutterstock.com/mosaic_250/162718586/271173242/stock-photo-headshot-portrait-of-young-man-smiling-isolated-on-outside-outdoors-background-271173242.jpg' , name: 'Paul', email: 'pauldogwalker@dog.com', phone: '(917)226-3451', rate: '$30', rating:'★★★'}])
walker7 = Walker.create([{imgUrl: 'https://ak9.picdn.net/shutterstock/videos/10918109/thumb/1.jpg' , name: 'David', email: 'davedogwalker@dog.com', phone: '(718)131-7316', rate: '$25', rating:'★★★'}])
walker8 = Walker.create([{imgUrl: 'https://ak5.picdn.net/shutterstock/videos/4447475/thumb/1.jpg' , name: 'Henry', email: 'hendogwalker@dog.com', phone: '(212)455-3313', rate: '$25', rating:'★★★'}])



# t.string :imgUrl, default: "No Image"
# t.string :name
# t.string :email
# t.string :phone
# t.string :rate
# t.string :rating
# t.string :password_digest