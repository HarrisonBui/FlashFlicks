# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(username: 'Guest', password: 'BarryAllenGuest')

movie1 = Movie.create(title: 'Forrest Gump',
                      director: 'Robert Zemeckis',
                      description: 'Slow-witted Forrest Gump (Tom Hanks) has
                       never thought of himself as disadvantaged, and thanks
                       to his supportive mother (Sally Field), he leads anything
                       but a restricted life. Whether dominating on the
                       gridiron as a college football star, fighting in
                       Vietnam or captaining a shrimp boat,
                       Forrest inspires people with his childlike optimism.
                       But one person Forrest cares about most may be the most
                       difficult to save -- his childhood love, the sweet but troubled Jenny (Robin Wright).',
                      rating: 5,
                      year: 1994,
                      image_url: 'http://2.bp.blogspot.com/-i03dWHqsKuY/Ucw2YpUKlOI/AAAAAAAAAFQ/NqfUh7pHZZQ/s1456/forrest-gump-poster-1994-tom-hanks.png'
                      )

movie2 = Movie.create(title: 'Arrival',
                      director: 'Denis Villeneuve',
                      description: 'Linguistics professor Louise Banks (Amy Adams)
                      leads an elite team of investigators when gigantic
                      spaceships touch down in 12 locations around the
                      world. As nations teeter on the verge of global
                      war, Banks and her crew must race against time to
                      find a way to communicate with the extraterrestrial
                      visitors. Hoping to unravel the mystery,
                      she takes a chance that could threaten her
                      life and quite possibly all of mankind.',
                      rating: 5,
                      year: 2016,
                      image_url: 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTExMzU0ODcxNDheQTJeQWpwZ15BbWU4MDE1OTI4MzAy._V1_UX182_CR0,0,182,268_AL_.jpg'
                      )

movie3 = Movie.create(title: 'Steve Jobs',
                      director: 'Danny Boyle',
                      description: 'With public anticipation running high,
                      Apple Inc. co-founders Steve Jobs (Michael Fassbender)
                      and Steve "Woz" Wozniak get ready to unveil the first
                      Macintosh in 1984. Jobs must also deal with personal issues
                      related to ex-girlfriend Chrisann Brennan and their young daughter
                      Lisa. Eventually fired, Jobs launches NeXT Inc. and prepares to release
                      a new computer model in 1988. Ten years later, Jobs is back at Apple Inc.
                      and about to revolutionize the industry once again with the iMac.',
                      rating: 4,
                      year: 2015,
                      image_url: 'https://mymovieyear.oscars.org/sites/mymovieyear/files/styles/poster_teaser/public/posters/7SUaf2UgoY0ZRGbQtRlfDkLDBCb_0.jpg?itok=46TdRrId'
                      )

movie4 = Movie.create(title: 'The Usual Suspects',
                      director: 'Bryan Singer',
                      description: '"The greatest trick the devil ever pulled was convincing the world he did not exist," says con man Kint (Kevin Spacey), drawing a comparison to the most enigmatic criminal of all time, Keyser Soze. Kint attempts to convince the feds that the mythic crime lord not only exists, but is also responsible for drawing Kint and his four partners into a multi-million dollar heist that ended with an explosion in San Pedro Harbor - leaving few survivors.',
                      rating: 5,
                      year: 1995,
                      image_url: 'https://lh3.googleusercontent.com/XCWuP19WyyKbcMR3iVOCSJwrvfvhJmRlZuPVwU4230VULWvFjLm9eBpG7n5HifkdnY8D=w300'
                      )

movie5 = Movie.create(title: 'The Imitation Game',
                      director: 'Morten Tyldum',
                      description: 'In 1939, newly created British intelligence agency MI6 recruits Cambridge mathematics alumnus Alan Turing (Benedict Cumberbatch) to crack Nazi codes, including Enigma -- which cryptanalysts had thought unbreakable. Turing team, including Joan Clarke (Keira Knightley), analyze Enigma messages while he builds a machine to decipher them. Turing and team finally succeed and become heroes, but in 1952, the quiet genius encounters disgrace when authorities reveal he is gay and send him to prison.',
                      rating: 4.7,
                      year: 2017,
                      image_url: 'https://resizing.flixster.com/YUvRlALfyVL5_u7IUDCgYyCK8po=/206x305/v1.bTsxMTE4MDg3MTtqOzE3MzE5OzEyMDA7NTAwOzc0MA'
                      )

movie6 = Movie.create(title: 'Get Out',
                      director: 'Jordan Peele',
                      description: 'Now that Chris (Daniel Kaluuya) and his girlfriend, Rose (Allison Williams), have reached the meet-the-parents milestone of dating, she invites him for a weekend getaway upstate with Missy and Dean. At first, Chris reads the family overly accommodating behavior as nervous attempts to deal with their daughter interracial relationship, but as the weekend progresses, a series of increasingly disturbing discoveries lead him to a truth that he never could have imagined.',
                      rating: 4.5,
                      year: 2015,
                      image_url: 'https://images-na.ssl-images-amazon.com/images/M/MV5BNTE2Nzg1NjkzNV5BMl5BanBnXkFtZTgwOTgyODMyMTI@._V1_SY1000_CR0,0,631,1000_AL_.jpg'
                      )

movie7 = Movie.create(title: 'La La Land',
                      director: 'Damien Chazelle',
                      description: 'Sebastian (Ryan Gosling) and Mia (Emma Stone) are drawn together by their common desire to do what they love. But as success mounts they are faced with decisions that begin to fray the fragile fabric of their love affair, and the dreams they worked so hard to maintain in each other threaten to rip them apart.',
                      rating: 3.5,
                      year: 2016,
                      image_url: 'http://t2.gstatic.com/images?q=tbn:ANd9GcRhFtgdSYQ89vUMjMJal2D8H39qBCkh9ptCEoZEsafOzkeQPTu2'
                      )

movie8 = Movie.create(title: 'Room',
                      director: 'Lenny Abrahamson',
                      description: 'Held captive for years in an enclosed space, a woman (Brie Larson) and her young son (Jacob Tremblay) finally gain their freedom, allowing the boy to experience the outside world for the first time.',
                      rating: 5,
                      year: 2016,
                      image_url: 'http://t1.gstatic.com/images?q=tbn:ANd9GcSu9dR_6oOzsDvAq76vlBqPsyYNHdLw3jRRrmJVb7EBPTQBryV1'
                      )
