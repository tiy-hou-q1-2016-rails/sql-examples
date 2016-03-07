
m1 = Movie.create title: "Mission Impossible"
m2 = Movie.create title: "Mission Impossible 2"
m3 = Movie.create title: "Mission Impossible 3"
m4 = Movie.create title: "Mission Impossible: Ghost Protocol"
m5 = Movie.create title: "Mission Impossible: Rogue Nation"

tom = Actor.create first_name: "Tom", last_name: "Cruise"
keri = Actor.create first_name: "Keri", last_name: "Russell"

Role.create movie: m1, actor: tom
Role.create movie: m2, actor: tom
Role.create movie: m3, actor: tom
Role.create movie: m4, actor: tom
Role.create movie: m5, actor: tom
Role.create movie: m3, actor: keri
