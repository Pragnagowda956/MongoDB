{ 
"_id": 1,
"name": "Alice",
"scores": 
[ 
{"type": "exam", "score": 90 },
{ "type": "quiz", "score": 85 },
{ "type": "homework", "score": 80 
} 
] 
}

db.students.find( 
 { "name": "Alice", "scores.type": "exam" }, 
 { "name": 1, "scores.$": 1 } 
)

db.students.find(
 { "name": "Bob" },
 { "name": 1, "scores": { $elemMatch: { "type": "quiz" } } }
)

db.students.find( 
 {}, 
 { "name": 1, "scores": { $slice: 2 } } 
)
