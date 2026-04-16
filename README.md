# MongoDB

db.customers.find({"age":{"$eq":28}})
db.customers.find({"age":{"$gt":28}})
db.customers.find({"age":{"$gt":30}})
db.customers.find({$or:[{city:"New York"},{city:"Los Angeles"}]})
db.customers.find({$and:[{age:35},{city:"Los Angeles"}]})
db.customers.find({$and:[{age:{$gte:30}},{age:{$lt:35}}]})
db.customers.find({$and:[{age:{$gt:30}},{age:{$lt:35}}]})
db.customers.find({$and:[{age:{$gte:30}},{age:{$lte:35}}]})
db.customers.find({$and:[{age:{$gte:30}},{age:{$lte:35}},{city:{$in:["New York","Miami"]}}]})
