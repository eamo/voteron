# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
elect1 = Election.create({name: 'General Election 2015', district: 'Ireland', overview: 'This is a sample overview', vote_date: '2014-11-02', positions: 1})
elect2 = Election.create({name: 'Irish Presidential Election', district: 'Ireland', overview: 'This is a sample overview',  vote_date: '2014-11-02', positions: 1})
elect3 = Election.create({name: 'US Mid Term Senate Elections', district: 'USA', overview: 'This is a sample overview',  vote_date: '2014-11-02', positions: 1})
elect4 = Election.create({name: 'Kenyan Presidential Elections', district: 'Kenya', overview: 'This is a sample overview',  vote_date: '2014-11-02', positions: 1})

a = Candidate.create({name: 'Jane Jones', overview: 'Up and Comer', pic_url:"http://womenofhr.com/wp-content/uploads/2012/12/Power-woman.jpg", election_id: 1})
b = Candidate.create({name: 'George Washington', overview: 'Conservative politician', pic_url:"http://a2.files.biography.com/image/upload/c_fill,dpr_1.0,g_face,h_300,q_80,w_300/MTIwNjA4NjM0MDA1MzkwODYw.jpg", election_id: 1})
c = Candidate.create({name: 'Margret Thatcher', overview: 'Current Taoiseach', pic_url:"http://www.hellomagazine.com/imagenes/profiles/margaret-thatcher/6043-margaret-thatcher.jpg", election_id: 1})
d = Candidate.create({name: 'Eamon DeValera', overview: 'Former President of Ireland', pic_url:"http://www.fiannafail.ie/page/-/images/DeValera/FF%205.jpg", election_id: 1})
e = Candidate.create({name: 'Bertie Ahern', overview: 'Former Taoiseach', pic_url:"http://www.tcd.ie/Political_Science/staff/michael_gallagher/ElectionPhotos/BertieAhern.jpg", election_id: 1})
f = Candidate.create({name: 'Michael D Higgins', overview: 'Current President', pic_url:"http://c3.thejournal.ie/media/2013/04/michael-d-higgins-12-630x332.jpg", election_id: 1})
 
a1 = Standpoint.create({name: 'Supports Gay Marriage', description: 'Supports gay marriage'})
j1 = Standpoint.create({name: 'Opposses Gay Marriage', description: 'Opposes gay marriage'})
b1 = Standpoint.create({name: 'For the Right to Choose', description: 'Supports the right for women to choose'})
c1 = Standpoint.create({name: 'Pro-Life', description: 'Against abortion'})
k1 = Standpoint.create({name: 'Supports Centralised Water Utility', description: 'Against abortion'})
d1 = Standpoint.create({name: 'Against Water Charges', description: 'Is against incoming water charges and Irish Water'})
e1 = Standpoint.create({name: 'For Europe', description: 'Supports the relationship '})
f1 = Standpoint.create({name: 'Anti-Gun', description: 'Is against the use of guns'})
g1 = Standpoint.create({name: 'Nationalist', description: 'Believes Ireland and Northern Ireland should be unified'})
h1 = Standpoint.create({name: 'Supports Progressive Tax', description: 'Believes tax policies should be progressive'})
i1 = Standpoint.create({name: 'Capital Punishment', description: 'Believes the death penalty should be a legal punitive sentence'})
l1 = Standpoint.create({name: 'Reducing Class Size', description: 'In Mullingar'})


a.standpoints << a1 #candidate(Jane Jones) a has the standpoint a1(Supports Gay Marriage)
a.standpoints << b1
a.standpoints << f1
a.standpoints << k1
a.standpoints << l1
b.standpoints << j1
b.standpoints << d1
b.standpoints << h1
c.standpoints << a1
c.standpoints << c1
c.standpoints << h1
d.standpoints << b1
d.standpoints << g1
d.standpoints << f1
e.standpoints << c1
f.standpoints << c1
f.standpoints << g1
