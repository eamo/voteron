# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

e1 = Election.create({name: 'Test', district: 'Dublin', overview: 'This is a sample overview', vote_date: '2014-11-02', positions: 1})
e2 = Election.create({name: 'Test2', district: 'Dublin', overview: 'This is a sample overview',  vote_date: '2014-11-02', positions: 1})
e3 = Election.create({name: 'Test3', district: 'Dublin', overview: 'This is a sample overview',  vote_date: '2014-11-02', positions: 1})
e4 = Election.create({name: 'Test4', district: 'Dublin', overview: 'This is a sample overview',  vote_date: '2014-11-02', positions: 1})

a = Candidate.create({name: 'AAA1', overview: 'sdfsdfsdfsf', election_id: 1})
b = Candidate.create({name: 'AAA2', overview: 'sdfsdfsdfsf', election_id: 1})
c = Candidate.create({name: 'AAA3', overview: 'sdfsdfsdfsf', election_id: 1})
d = Candidate.create({name: 'AAA4', overview: 'sdfsdfsdfsf', election_id: 1})
e = Candidate.create({name: 'AAA5', overview: 'sdfsdfsdfsf', election_id: 1})
f = Candidate.create({name: 'AAA6', overview: 'sdfsdfsdfsf', election_id: 1})

a1 = Standpoint.create({name: 'AAA33', description: 'sdfsdfsdfsf'})
b1 = Standpoint.create({name: 'AAA44', description: 'sdfsdfsdfsf'})
c1 = Standpoint.create({name: 'AAA55', description: 'sdfsdfsdfsf'})
d1 = Standpoint.create({name: 'AAA66', description: 'sdfsdfsdfsf'})
e1 = Standpoint.create({name: 'AAA77', description: 'sdfsdfsdfsf'})
f1 = Standpoint.create({name: 'AAA88', description: 'sdfsdfsdfsf'})

a.standpoints << a1
