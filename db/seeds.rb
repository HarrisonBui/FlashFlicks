# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)

user1 = User.create!(username: 'Guest', password: 'BarryAllenGuest')

movie1 = Movie.create!(title: 'Forrest Gump',
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

movie2 = Movie.create!(title: 'Arrival',
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

movie3 = Movie.create!(title: 'Steve Jobs',
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

movie4 = Movie.create!(title: 'The Usual Suspects',
                      director: 'Bryan Singer',
                      description: '"The greatest trick the devil ever pulled was convincing the world he did not exist," says con man Kint (Kevin Spacey), drawing a comparison to the most enigmatic criminal of all time, Keyser Soze. Kint attempts to convince the feds that the mythic crime lord not only exists, but is also responsible for drawing Kint and his four partners into a multi-million dollar heist that ended with an explosion in San Pedro Harbor - leaving few survivors.',
                      rating: 5,
                      year: 1995,
                      image_url: 'https://lh3.googleusercontent.com/XCWuP19WyyKbcMR3iVOCSJwrvfvhJmRlZuPVwU4230VULWvFjLm9eBpG7n5HifkdnY8D=w300'
                      )

movie5 = Movie.create!(title: 'The Imitation Game',
                      director: 'Morten Tyldum',
                      description: 'In 1939, newly create!d British intelligence agency MI6 recruits Cambridge mathematics alumnus Alan Turing (Benedict Cumberbatch) to crack Nazi codes, including Enigma -- which cryptanalysts had thought unbreakable. Turing team, including Joan Clarke (Keira Knightley), analyze Enigma messages while he builds a machine to decipher them. Turing and team finally succeed and become heroes, but in 1952, the quiet genius encounters disgrace when authorities reveal he is gay and send him to prison.',
                      rating: 4.7,
                      year: 2017,
                      image_url: 'https://resizing.flixster.com/YUvRlALfyVL5_u7IUDCgYyCK8po=/206x305/v1.bTsxMTE4MDg3MTtqOzE3MzE5OzEyMDA7NTAwOzc0MA'
                      )

movie6 = Movie.create!(title: 'Get Out',
                      director: 'Jordan Peele',
                      description: 'Now that Chris (Daniel Kaluuya) and his girlfriend, Rose (Allison Williams), have reached the meet-the-parents milestone of dating, she invites him for a weekend getaway upstate with Missy and Dean. At first, Chris reads the family overly accommodating behavior as nervous attempts to deal with their daughter interracial relationship, but as the weekend progresses, a series of increasingly disturbing discoveries lead him to a truth that he never could have imagined.',
                      rating: 4.5,
                      year: 2015,
                      image_url: 'https://images-na.ssl-images-amazon.com/images/M/MV5BNTE2Nzg1NjkzNV5BMl5BanBnXkFtZTgwOTgyODMyMTI@._V1_SY1000_CR0,0,631,1000_AL_.jpg'
                      )

movie7 = Movie.create!(title: 'La La Land',
                      director: 'Damien Chazelle',
                      description: 'Sebastian (Ryan Gosling) and Mia (Emma Stone) are drawn together by their common desire to do what they love. But as success mounts they are faced with decisions that begin to fray the fragile fabric of their love affair, and the dreams they worked so hard to maintain in each other threaten to rip them apart.',
                      rating: 3.5,
                      year: 2016,
                      image_url: 'http://t2.gstatic.com/images?q=tbn:ANd9GcRhFtgdSYQ89vUMjMJal2D8H39qBCkh9ptCEoZEsafOzkeQPTu2'
                      )

movie8 = Movie.create!(title: 'Moana',
                      director: 'John Musker, Ron Clements',
                      description: 'An adventurous teenager sails out on a daring mission to save her people. During her journey, Moana meets the once-mighty demigod Maui, who guides her in her quest to become a master way-finder. Together they sail across the open ocean on an action-packed voyage, encountering enormous monsters and impossible odds. Along the way, Moana fulfills the ancient quest of her ancestors and discovers the one thing she always sought: her own identity.',
                      rating: 2,
                      year: 2016,
                      image_url: 'http://t3.gstatic.com/images?q=tbn:ANd9GcTJOaSVrzlgewVqmUgUz4W5ty2KUeHH6s-aYSIr_Qw8v2EBrtCS'
                      )

movie9 = Movie.create!(title: 'Room',
                      director: 'Lenny Abrahamson',
                      description: 'ROOM tells the extraordinary story of Jack, a spirited 5-year-old who is looked after by his loving and devoted mother. Like any good mother, Ma dedicates herself to keeping Jack happy and safe, nurturing him with warmth and love and doing typical things like playing games and telling stories. Their life, however, is anything but typical--they are trapped--confined to a 10-by-10-foot space that Ma has euphemistically named Room. Ma has create!d a whole universe for Jack within Room, and she will stop at nothing to ensure that, even in this treacherous environment, Jack is able to live a complete and fulfilling life. But as Jack curiosity about their situation grows, and Ma resilience reaches its breaking point, they enact a risky plan to escape, ultimately bringing them face-to-face with what may turn out to be the scariest thing yet: the real world.',
                      rating: 5,
                      year: 2016,
                      image_url: 'http://t1.gstatic.com/images?q=tbn:ANd9GcSu9dR_6oOzsDvAq76vlBqPsyYNHdLw3jRRrmJVb7EBPTQBryV1'
                      )
movie10 = Movie.create!(title: 'Predator',
                      director: 'John McTiernan',
                      description: 'Dutch (Arnold Schwarzenegger), a soldier of fortune, is hired by the U.S. government to secretly rescue a group of politicians trapped in Guatemala. But when Dutch and his team, which includes weapons expert Blain (Jesse Ventura) and CIA agent George (Carl Weathers), land in Central America, something is gravely wrong. After finding a string of dead bodies, the crew discovers they are being hunted by a brutal creature with superhuman strength and the ability to disappear into its surroundings.',
                      rating: 4,
                      year: 1987,
                      image_url: 'http://www.gstatic.com/tv/thumb/movieposters/10094/p10094_p_v8_ap.jpg'
                      )

movie11 = Movie.create!(title: 'Snowden',
                      director: 'Oliver Stone',
                      description: 'Disillusioned with the intelligence community, top contractor Edward Snowden (Joseph Gordon-Levitt) leaves his job at the National Security Agency. He now knows that a virtual mountain of data is being assembled to track all forms of digital communication -- not just from foreign governments and terrorist groups, but from ordinary Americans. When Snowden decides to leak this classified information, he becomes a traitor to some, a hero to others and a fugitive from the law.',
                      rating: 2,
                      year: 2016,
                      image_url: 'http://res.cloudinary.com/dufjsfgjv/image/upload/v1490037155/snowden_yyjsqc.jpg'
                      )

movie12 = Movie.create!(title: 'The Dark Knight',
                      director: 'Christopher Nolan',
                      description: 'The follow-up to Batman Begins, The Dark Knight reunites director Christopher Nolan and star Christian Bale, who reprises the role of Batman/Bruce Wayne in his continuing war on crime. With the help of Lt. Jim Gordon and District Attorney Harvey Dent, Batman sets out to destroy organized crime in Gotham for good. The triumvirate proves effective. But soon the three find themselves prey to a rising criminal mastermind known as The Joker, who thrusts Gotham into anarchy and forces Batman closer to crossing the fine line between hero and vigilante.',
                      rating: 5,
                      year: 2008,
                      image_url: 'http://res.cloudinary.com/dufjsfgjv/image/upload/v1490050492/thedarkknight_ux9gb1.jpg'
                      )
movie13 = Movie.create!(title: 'Catch Me If You Can',
                      director: 'Steven Spielberg',
                      description: 'New Rochelle, the 1960s. High schooler Frank Abagnale Jr. idolizes his father, who is in trouble with the IRS. When his parents separate, Frank runs away to Manhattan with $25 in his checking account, vowing to regain dad losses and get his parents back together. Just a few years later, the FBI tracks him down in France; he is extradited, tried, and jailed for passing more than $4,000,000 in bad checks. Along the way, he is posed as a Pan Am pilot, a pediatrician, and an attorney. And, from nearly the beginning of this life of crime, he is been pursued by a dour FBI agent, Carl Hanratty. What starts as cat and mouse becomes something akin to father and son.',
                      rating: 5,
                      year: 2002,
                      image_url: 'http://res.cloudinary.com/dufjsfgjv/image/upload/v1490052273/Catch_Me_If_You_Can_2002_movie_qrq8nb.jpg'
                      )

movie14 = Movie.create!(title: 'Logan',
                      director: 'James Mangold',
                      description: 'In the near future, a weary Logan (Hugh Jackman) cares for an ailing Professor X (Patrick Stewart) at a remote outpost on the Mexican border. His plan to hide from the outside world gets upended when he meets a young mutant (Dafne Keen) who is very much like him. Logan must now protect the girl and battle the dark forces that want to capture her.',
                      rating: 4,
                      year: 2017,
                      image_url: 'http://res.cloudinary.com/dufjsfgjv/image/upload/v1490052434/logan_hwoyhg.jpg'
                      )

movie15 = Movie.create!(title: 'The Boss Baby',
                      director: 'Tom McGrath',
                      description: 'A new baby arrival impacts a family, told from the point of view of a delightfully unreliable narrator -- a wildly imaginative 7-year-old named Tim. The most unusual Boss Baby (Alec Baldwin) arrives at Tim home in a taxi, wearing a suit and carrying a briefcase. The instant sibling rivalry must soon be put aside when Tim discovers that Boss Baby is actually a spy on a secret mission, and only he can help thwart a dastardly plot that involves an epic battle between puppies and babies.',
                      rating: 3,
                      year: 2017,
                      image_url: 'http://res.cloudinary.com/dufjsfgjv/image/upload/v1490052688/bossbaby_truwqe.jpg'
                      )

movie16 = Movie.create!(title: 'The Prestige',
                      director: 'Christopher Nolan',
                      description: 'In the end of the Nineteenth Century, in London, Robert Angier, his beloved wife Julia McCullough and Alfred Borden are friends and assistants of a magician. When Julia accidentally dies during a performance, Robert blames Alfred for her death and they become enemies. Both become famous and rival magicians, sabotaging the performance of the other on the stage. When Alfred performs a successful trick, Robert becomes obsessed trying to disclose the secret of his competitor with tragic consequences.',
                      rating: 5,
                      year: 2006,
                      image_url: 'http://res.cloudinary.com/dufjsfgjv/image/upload/v1490052855/Prestige_poster_is8cie.jpg'
                      )

movie17 = Movie.create!(title: "You've Got Mail",
                      director: 'Nora Ephron',
                      description: "Struggling boutique bookseller Kathleen Kelly (Meg Ryan) hates Joe Fox (Tom Hanks), the owner of a corporate Foxbooks chain store that just moved in across the street. When they meet online, however, they begin an intense and anonymous Internet romance, oblivious of each other's true identity. Eventually Joe learns that the enchanting woman he's involved with is actually his business rival. He must now struggle to reconcile his real-life dislike for her with the cyber love he's come to feel.",
                      rating: 5,
                      year: 1998,
                      image_url: 'http://res.cloudinary.com/dufjsfgjv/image/upload/v1490052973/youvegotmail_g632gz.jpg'
                      )

movie18 = Movie.create!(title: "Knocked Up",
                      director: 'Judd Apatow',
                      description: "When Alison Scott is promoted in E! Television, she goes to a night-club to celebrate with her older married sister Debbie. Alison meets the pothead reckless Ben Stone and while having a small talk with Ben, Debbie's husband Pete calls her to tell that their daughter has chicken pox. Debbie leaves the place but Allison stays with Ben, drinking and dancing along all night; completely wasted, they end up having a one night stand. Ben does not use condom and eight weeks later, Allison discovers that she is pregnant. She calls Ben and they decide to try to stay together and have the baby. However, Ben needs to grow-up first to raise a family of his own.",
                      rating: 2,
                      year: 2007,
                      image_url: 'http://res.cloudinary.com/dufjsfgjv/image/upload/v1490053171/Knockedupmp_mm4q22.jpg'
                      )

movie19 = Movie.create!(title: "Hidden Figures",
                      director: 'Ted Melfi',
                      description: "HIDDEN FIGURES is the incredible untold story of Katherine G. Johnson (Taraji P. Henson), Dorothy Vaughan (Octavia Spencer) and Mary Jackson (Janelle Monáe)-brilliant African-American women working at NASA, who served as the brains behind one of the greatest operations in history: the launch of astronaut John Glenn into orbit, a stunning achievement that restored the nation's confidence, turned around the Space Race, and galvanized the world. The visionary trio crossed all gender and race lines to inspire generations to dream big.",
                      rating: 4,
                      year: 2017,
                      image_url: 'http://res.cloudinary.com/dufjsfgjv/image/upload/v1490053327/hiddenfigures_rqvlj5.jpg'
                      )

movie20 = Movie.create!(title: "Wonder Woman",
                      director: 'Patty Jenkins',
                      description: "Before she was Wonder Woman (Gal Gadot), she was Diana, princess of the Amazons, trained to be an unconquerable warrior. Raised on a sheltered island paradise, Diana meets an American pilot (Chris Pine) who tells her about the massive conflict that's raging in the outside world. Convinced that she can stop the threat, Diana leaves her home for the first time. Fighting alongside men in a war to end all wars, she finally discovers her full powers and true destiny.",
                      rating: 5,
                      year: 2017,
                      image_url: 'http://res.cloudinary.com/dufjsfgjv/image/upload/v1490053463/wonderwoman_vkqypd.jpg'
                      )

movie21 = Movie.create!(title: "Mad Max: Fury Road",
                      director: 'George Miller',
                      description: "Years after the collapse of civilization, the tyrannical Immortan Joe enslaves apocalypse survivors inside the desert fortress the Citadel. When the warrior Imperator Furiosa (Charlize Theron) leads the despot's five wives in a daring escape, she forges an alliance with Max Rockatansky (Tom Hardy), a loner and former captive. Fortified in the massive, armored truck the War Rig, they try to outrun the ruthless warlord and his henchmen in a deadly high-speed chase through the Wasteland.",
                      rating: 3,
                      year: 2015,
                      image_url: 'http://www.fatmovieguy.com/wp-content/uploads/2015/03/Mad-Max-Fury-Road-Movie-Poster-2.jpg'
                      )
movie22 = Movie.create!(title: "The Godfather",
                      director: 'Francis Ford Coppola',
                      description: "Widely regarded as one of the greatest films of all time, this mob drama, based on Mario Puzo's novel of the same name, focuses on the powerful Italian-American crime family of Don Vito Corleone (Marlon Brando). When the don's youngest son, Michael (Al Pacino), reluctantly joins the Mafia, he becomes involved in the inevitable cycle of violence and betrayal. Although Michael tries to maintain a normal relationship with his wife, Kay (Diane Keaton), he is drawn deeper into the family business.",
                      rating: 5,
                      year: 1972,
                      image_url: 'http://static.rogerebert.com/uploads/movie/movie_poster/the-godfather-1972/large_d4KNaTrltq6bpkFS01pYtyXa09m.jpg'
                      )

movie23 = Movie.create!(title: "E.T. the Extra-Terrestrial",
                      director: 'Steven Spielberg',
                      description: "After a gentle alien becomes stranded on Earth, the being is discovered and befriended by a young boy named Elliott (Henry Thomas). Bringing the extraterrestrial into his suburban California house, Elliott introduces E.T., as the alien is dubbed, to his brother and his little sister, Gertie (Drew Barrymore), and the children decide to keep its existence a secret. Soon, however, E.T. falls ill, resulting in government intervention and a dire situation for both Elliott and the alien.",
                      rating: 5,
                      year: 1982,
                      image_url: 'http://t1.gstatic.com/images?q=tbn:ANd9GcRGJHE2d9ETIgpONE3pUTXMcUoBMkahlppFmicaL8FG8ovE37x4w'
                      )

movie24 = Movie.create!(title: "Power Rangers",
                      director: 'Dean Israelite',
                      description: "Five ordinary teens must become something extraordinary when they learn that their small town of Angel Grove - and the world - is on the verge of being obliterated by an alien threat. Chosen by destiny, our heroes quickly discover they are the only ones who can save the planet. But to do so, they will have to overcome their real-life issues and before it's too late, band together as the Power Rangers.
",
                      rating: 2,
                      year: 2017,
                      image_url: 'http://t1.gstatic.com/images?q=tbn:ANd9GcQT0t1q8_C6Rj71GrNkeSwvKbKDFTxv9_mC9fVVN4Ri25hNSHNb'
                      )

movie25 = Movie.create!(title: "Chips",
                      director: 'Dax Shepard',
                      description: "Jon Baker and Frank Ponch Poncherello have just joined the California Highway Patrol in Los Angeles, but for very different reasons. Baker is a former motorbike rider who's trying to put his life and marriage back together. Poncherello is a cocky, undercover FBI agent who's investigating a multimillion dollar heist that may be an inside job. Forced to work together, the inexperienced rookie and hardened veteran begin clashing instead of clicking while trying to nab the bad guys.",
                      rating: 4,
                      year: 2017,
                      image_url: 'http://t3.gstatic.com/images?q=tbn:ANd9GcRUO7VInvEbef4vqAFgFzSQ6aieDjmMLaL-zngg78LP8vhqmcQB'
                      )
