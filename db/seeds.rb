
UserDatum.destroy_all
UserType.destroy_all

type1 = UserType.create(user_type:'admin',rules:'all')
type2 = UserType.create(user_type:'user',rules:'read')
type3 = UserType.create(user_type:'editor',rules:'read,write')

user1 = UserDatum.create(name: 'mohamed',age:'25',user_type:'admin')
user2 = UserDatum.create(name: 'ahmed',age:'25',user_type:'user')
user3 = UserDatum.create(name: 'ali',age:'25',user_type:'editor')



