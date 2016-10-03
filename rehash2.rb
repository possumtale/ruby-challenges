patient_01 = { species: "raccoon", story: "orphaned after mom was trapped and relocated"}

patient_02 = { species: "squirrel", story: "infant blown out of nest during a storm"} 

patient_03 = { species: "oppossum", story: "injured when hit by car"} 

patient_04 = { species:"fox", story: "adult with mange"} 

patient_04 = { species: "fawn", story: "kidnapped by well-meaning human"}

large_patient = patient_04[:species]
small_patient = patient_02[:species]
large_patient_story = patient_04[:story]
small_patient_story = patient_02[:story]

puts "In 2016, we had wildlife patients large and small, from a #{large_patient} #{large_patient_story} to a #{small_patient}#{small_patient_story}  patient_02[:story]. Please support our work with a donation today!" 