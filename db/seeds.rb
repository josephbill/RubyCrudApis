# resetting our seeds if we restart app
Book.destroy_all
Member.destroy_all

#dummies 
# setting each seed to a variable and using the .create method to pass in our resource attribute. 
# Note that when creating the seeds for the many class, you need to include the id of it’s related one class.
member1 = Member.create(name: "Joseph", gender: "male", phoneNumber: "0798501657")
member2 = Member.create(name: "Bill", gender: "male", phoneNumber: "0734724283")
book1 = Book.create(name: "Growing up a crime" , rentedTo: member2)
book2 = Book.create(name: "Gifted Hands" , rentedTo: member1)