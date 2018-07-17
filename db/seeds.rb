# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

john = User.create({first_name: 'John', last_name: 'Doe', user_name: 'johnnydoe', password_hash: 'johndoe123', email: 'johndoe@email.com'})
tristan = User.create({first_name: 'Tristan', last_name: 'Mallorca', user_name: 'trrstn', password_hash: 'trrstn123', email: 'trrstn@email.com'})
humph = User.create({first_name: 'Humphrey', last_name: 'Litan', user_name: 'humphreylitan', password_hash: 'humphreylitan', email: 'humphreylitan@email.com'})

post = Post.create(
  {
    title: 'Tristan\'s Post',
    body: 'Tristan\'s Post Body asdaf Lorem ipsum dolor sit amet, ne pri latine ornatus consequuntur, agam wisi referrentur usu ei. Ut vis enim tamquam, has eros dissentiet ad. Per cu etiam insolens, duo eu dictas phaedrum. Adhuc augue dissentiunt cu mel.',
    user: tristan
  })
post2 = Post.create(
  {
    title: 'Look at this Post',
    body: 'Ut eum porro iuvaret perfecto, quo agam semper malorum ut, mel no nisl aliquid omittam. Eos graece iuvaret ullamcorper ea, soleat erroribus comprehensam ne sit, ne facete eripuit qui.',
    user: tristan
  })
post3 = Post.create(
  {
    title: 'The Big John Diary',
    body: 'Qui id elit mundi scribentur, no audiam copiosae volutpat vis, in inani volumus expetendis vel.',
    user: john
  })
post4 = Post.create(
  {
    title: 'Humphrey Post',
    body: 'Tristan\'s Post Body asdaf Lorem ipsum dolor sit amet, ne pri latine ornatus consequuntur, agam wisi referrentur usu ei. Ut vis enim tamquam, has eros dissentiet ad. Per cu etiam insolens, duo eu dictas phaedrum. Adhuc augue dissentiunt cu mel.',
    user: humph
  })

post.save!