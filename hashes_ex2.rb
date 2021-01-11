critter = { name: 'Oliver' }
animal = { type: 'cat' }
m1 = critter.merge(animal)
p m1
p critter
p animal
m2 = critter.merge!(animal)
p m2
p critter
p animal

