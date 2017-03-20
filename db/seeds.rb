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

movie8 = Movie.create(title: 'Moana',
                      director: 'John Musker, Ron Clements',
                      description: 'An adventurous teenager sails out on a daring mission to save her people. During her journey, Moana meets the once-mighty demigod Maui, who guides her in her quest to become a master way-finder. Together they sail across the open ocean on an action-packed voyage, encountering enormous monsters and impossible odds. Along the way, Moana fulfills the ancient quest of her ancestors and discovers the one thing she always sought: her own identity.',
                      rating: 2,
                      year: 2016,
                      image_url: 'http://t3.gstatic.com/images?q=tbn:ANd9GcTJOaSVrzlgewVqmUgUz4W5ty2KUeHH6s-aYSIr_Qw8v2EBrtCS'
                      )

movie9 = Movie.create(title: 'Room',
                      director: 'Lenny Abrahamson',
                      description: 'ROOM tells the extraordinary story of Jack, a spirited 5-year-old who is looked after by his loving and devoted mother. Like any good mother, Ma dedicates herself to keeping Jack happy and safe, nurturing him with warmth and love and doing typical things like playing games and telling stories. Their life, however, is anything but typical--they are trapped--confined to a 10-by-10-foot space that Ma has euphemistically named Room. Ma has created a whole universe for Jack within Room, and she will stop at nothing to ensure that, even in this treacherous environment, Jack is able to live a complete and fulfilling life. But as Jack curiosity about their situation grows, and Ma resilience reaches its breaking point, they enact a risky plan to escape, ultimately bringing them face-to-face with what may turn out to be the scariest thing yet: the real world.',
                      rating: 5,
                      year: 2016,
                      image_url: 'http://t1.gstatic.com/images?q=tbn:ANd9GcSu9dR_6oOzsDvAq76vlBqPsyYNHdLw3jRRrmJVb7EBPTQBryV1'
                      )
movie10 = Movie.create(title: 'Predator',
                      director: 'John McTiernan',
                      description: 'Dutch (Arnold Schwarzenegger), a soldier of fortune, is hired by the U.S. government to secretly rescue a group of politicians trapped in Guatemala. But when Dutch and his team, which includes weapons expert Blain (Jesse Ventura) and CIA agent George (Carl Weathers), land in Central America, something is gravely wrong. After finding a string of dead bodies, the crew discovers they are being hunted by a brutal creature with superhuman strength and the ability to disappear into its surroundings.',
                      rating: 4,
                      year: 1987,
                      image_url: 'http://www.gstatic.com/tv/thumb/movieposters/10094/p10094_p_v8_ap.jpg'
                      )

movie11 = Movie.create(title: 'Snowden',
                      director: 'Oliver Stone',
                      description: 'Disillusioned with the intelligence community, top contractor Edward Snowden (Joseph Gordon-Levitt) leaves his job at the National Security Agency. He now knows that a virtual mountain of data is being assembled to track all forms of digital communication -- not just from foreign governments and terrorist groups, but from ordinary Americans. When Snowden decides to leak this classified information, he becomes a traitor to some, a hero to others and a fugitive from the law.',
                      rating: 2,
                      year: 2016,
                      image_url: 'http://res.cloudinary.com/dufjsfgjv/image/upload/v1490037155/snowden_yyjsqc.jpg'
                      )
