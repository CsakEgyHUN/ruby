namespace :db do
  desc "TODO"
  task populate: :environment do
    userr = User.create(email:"asd@asd.com", password:"asd")

    tag1 = Tag.create(name:"Tag1")
    tag2 = Tag.create(name:"Tag2")
    tag3 = Tag.create(name:"Tag3")

    Recipe.create(title:"Palacsinta",description:"A palacsintatészta hozzávalóit összekeverjük egy tálban, majd pár percig pihentetjük.",user:userr,tags:[tag1,tag2])
    Recipe.create(title:"Valami2",description:"asdfef1  asdfef1asdfef1asdfef1asdfef1 asdfef1 asdfef1asdfef1 asdfef1asdfef1asdfef1asdfef1",user:userr,tags:[tag1,tag3])
    Recipe.create(title:"Valami3",description:"asdfef1   asdfef1 asdfef1asdfef1 asdfef1asdfef1asdfef1asdfef1",user:userr,tags:[tag1])
    Recipe.create(title:"Valami4",description:"asdfef1  asdfef1asdfef1asdfef1asdfef1 asdfef1  asdfef1asdfef1asdfef1asdfef1",user:userr,tags:[tag3])
    Recipe.create(title:"Valami5",description:"asdfef1  asdfef1asdfef1asdfef1asdfef1 asdfef1 asdfef1asdfef1 ",user:userr)
    Recipe.create(title:"Valami6",description:"  asdfef1asdfef1asdfef1asdfef1 asdfef1 asdfef1asdfef1 asdfef1asdfef1asdfef1asdfef1",user:userr)


  end

end
