# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

diego = User.create!(email: 'diego@cefit.cl', password: 'diego123')
member1 = Member.create!(
  name: 'diego', age: 27,
  email: 'member@cefit.cl', phone: 56_945_572_692,
  country_code: 'cl',
  weight: 65,
  height: 163,
  password: 'diego123'
)
Objective.create!(weight_loss: true, member: member1)
group1 = Group.create!(
  name: 'Mi grupo familiar',
  group_type: 'familiar',
  category: 'basic'
)
MemberGroup.create!(member: member1, group: group1)

tag1 = Tag.create!(name: 'Fitness')
duration1 = Duration.create!(duration_type: 'minutely', period: 30)
equipment1 = Equipment.create!(name: 'Mancuernas', equipment_type: 'phisic')
style1 = Style.create!(name: 'Harders')

exercise1 = Exercise.create!(name: 'Abdominales', level: 'advanced', style: style1)
nutrition1 = Nutrition.create!(nutrition_type: 'Normal', diet: 'vegan')
health1 = Health.create!(health_type: 'Yoga')

duration1 = Duration.create!(duration_type: 'monthly', period: 1)
Subscription.create!(
  subscribable: exercise1,
  group: group1,
  duration: duration1
)
Subscription.create!(
  subscribable: health1,
  group: group1,
  duration: duration1
)

activity1 = Activity.create!(
  title: 'TItulo',
  content: 'COntenido',
  summary: 'Sumario',
  image: 'image_url',
  author: 'Diego',
  tag: tag1,
  equipment: equipment1,
  duration: duration1
)

Assignment.create(
  activity: activity1,
  assignable: exercise1
)
