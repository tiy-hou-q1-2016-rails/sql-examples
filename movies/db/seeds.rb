
if Movie.count == 0
  Movie.create title: "Mission Impossible"
  Movie.create title: "Mission Impossible 2"
  Movie.create title: "Mission Impossible 3"
  Movie.create title: "Mission Impossible: Ghost Protocol"
  Movie.create title: "Mission Impossible: Rogue Nation"
end

if Actor.count == 0
  Actor.create first_name: "Tom", last_name: "Cruise"
  Actor.create first_name: "Keri", last_name: "Russell"
end
