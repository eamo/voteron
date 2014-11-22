# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

e1 = Election.create({name: 'Irish Marriage Referendum', district: 'Dublin', overview: 'This is a sample overview', vote_date: '2014-11-02', positions: 1})
e2 = Election.create({name: 'Irish Presidential Election', district: 'Dublin', overview: 'This is a sample overview',  vote_date: '2014-11-02', positions: 1})
e3 = Election.create({name: 'US Mid Term Senate Elections', district: 'Dublin', overview: 'This is a sample overview',  vote_date: '2014-11-02', positions: 1})
e4 = Election.create({name: 'Kenyan Presidential Elections', district: 'Dublin', overview: 'This is a sample overview',  vote_date: '2014-11-02', positions: 1})

a = Candidate.create({name: 'Tom Jones', overview: 'sdfsdfsdfsf', election_id: 1})
b = Candidate.create({name: 'Phil Smith', overview: 'sdfsdfsdfsf', election_id: 1})
c = Candidate.create({name: 'AAA3', overview: 'sdfsdfsdfsf', election_id: 1})
d = Candidate.create({name: 'AAA4', overview: 'sdfsdfsdfsf', election_id: 1})
e = Candidate.create({name: 'AAA5', overview: 'sdfsdfsdfsf', election_id: 1})
f = Candidate.create({name: 'Lucy Kellaway', overview: 'sdfsdfsdfsf', election_id: 2})

a1 = Standpoint.create({name: 'Supports Gay Marriage', description: 'sdfsdfsdfsf'})
b1 = Standpoint.create({name: 'Supports the right to choose', description: 'sdfsdfsdfsf'})
c1 = Standpoint.create({name: 'Supports Pro-Life', description: 'sdfsdfsdfsf'})
d1 = Standpoint.create({name: 'AAA66', description: 'sdfsdfsdfsf'})
e1 = Standpoint.create({name: 'AAA77', description: 'sdfsdfsdfsf'})
f1 = Standpoint.create({name: 'AAA88', description: 'sdfsdfsdfsf'})

a.standpoints << a1 #candidate a has the standpoint a1
b.standpoints << a1
c.standpoints << a1
d.standpoints << a1
a.standpoints << c1
