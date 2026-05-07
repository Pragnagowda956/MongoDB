{
  "name": "Aa",
  "age": 20,
  "grade": "A",
  "score": 
  {
    "math": 85,
    "english": 92,
    "science": 88
  }
}

{
  "name": "Bb",
  "age": 21,
  "grade": "B",
  "score": 
  {
    "math": 45,
    "english": 52,
    "science": 84
  }
}

{
  "name": "Cc",
  "age": 22,
  "grade": "C",
  "scores": 
  {
    "math": 78,
    "english": 85,
    "science": 80
  }
}

{
  "name": "Dd",
  "age": 23,
  "grade": "A",
  "scores": 
  {
    "math": 65,
    "english": 70,
    "science": 72
  }
}


db.students.aggregate([{$match:{age:{$gte:21}}}])
db.students.aggregate([{$match:{age:{$gte:21}}},{$group:{_id:"$grade",averageAge:{$avg:"$age"}}},{$sort:{averageAge:-1}},{$project:{_id:0,grade:"$_id",averageAge:1}},{$skip:1}])
db.students.aggregate([{$match:{age:{$lte:21}}}])
