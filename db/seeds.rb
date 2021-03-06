# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Review.destroy_all


sample_responses = [
  "Great fantastic movie! Kept me engaged the entire time.",
  "Couldn't leave my seat at the theaters!",
  "The movie could have been better, but overall still enjoyed it.",
  "Wow I Mean make this a sequel!",
  "You know what you're getting before you go, and you get it.",
  "Basically the action movie equivalent of your dad catching you smoking a cigarette and then making you finish the pack.",
  "For a movie that pretends to be an elaborate thriller, it's ridiculously simple, and just doesn't even seem to be trying anymore.",
  "A highly recommended movie, perfect to for the weekend.",
  "The animation and sound effects are so superbly rendered -- the fantasy sequences have an entirely different and nifty flavor -- that a drop of drool or a puff of baby powder seems to have real texture and feeling.",
  "A ravenous masterpiece tailor made for America's current climate.",
  "Well cast and slickly edited... situations are horrific in their banality... who knew teacups could be sinister?",
  "A near-perfect cinematic achievement, this movie is an intelligent, exceptionally-written, and visually-captivating thriller.",
  "One that I think will require a rewatch. Whilst I felt somewhat disappointed by the conclusion and revelation to the story, it is nevertheless an interesting dark comedy/thriller.",
  "What could have been a suspense film, ends up being a B cinema production, with lowly plotted characters, and stupid motivations.",
  "What good is immortality as a math megamind if you can't snuggle with your one-eyed cat--or frolic on the playground--with your friends today?",
  "Perceptively subtle and satisfying, it packs an emotional punch.",
  "Went in with low expectations and left blown away by this great film.",
  "Magic tricks become shorthand for the power of personal transformation",
  "A a tense, well-made spacefaring war movie about a desperate and demoralized band of insurgents standing up against a rising authoritarian regime.",
]


user1 = User.create!(username: 'Guest', password: 'BarryAllenGuest')

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
                      image_url: 'https://2.bp.blogspot.com/-i03dWHqsKuY/Ucw2YpUKlOI/AAAAAAAAAFQ/NqfUh7pHZZQ/s1456/forrest-gump-poster-1994-tom-hanks.png',
                      user_id: 1
                      ),

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
                      image_url: 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTExMzU0ODcxNDheQTJeQWpwZ15BbWU4MDE1OTI4MzAy._V1_UX182_CR0,0,182,268_AL_.jpg',
                      user_id: 1
                      ),

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
                      image_url: 'http://res.cloudinary.com/dufjsfgjv/image/upload/v1525372690/steve_jobs_esp62y.jpg',
                      user_id: 1
                      ),

movie4 = Movie.create(title: 'The Usual Suspects',
                      director: 'Bryan Singer',
                      description: '"The greatest trick the devil ever pulled was convincing the world he did not exist," says con man Kint (Kevin Spacey), drawing a comparison to the most enigmatic criminal of all time, Keyser Soze. Kint attempts to convince the feds that the mythic crime lord not only exists, but is also responsible for drawing Kint and his four partners into a multi-million dollar heist that ended with an explosion in San Pedro Harbor - leaving few survivors.',
                      rating: 5,
                      year: 1995,
                      image_url: 'https://lh3.googleusercontent.com/XCWuP19WyyKbcMR3iVOCSJwrvfvhJmRlZuPVwU4230VULWvFjLm9eBpG7n5HifkdnY8D=w300',
                      user_id: 1
                      ),

movie5 = Movie.create(title: 'The Imitation Game',
                      director: 'Morten Tyldum',
                      description: 'In 1939, newly created British intelligence agency MI6 recruits Cambridge mathematics alumnus Alan Turing (Benedict Cumberbatch) to crack Nazi codes, including Enigma -- which cryptanalysts had thought unbreakable. Turing team, including Joan Clarke (Keira Knightley), analyze Enigma messages while he builds a machine to decipher them. Turing and team finally succeed and become heroes, but in 1952, the quiet genius encounters disgrace when authorities reveal he is gay and send him to prison.',
                      rating: 4.7,
                      year: 2017,
                      image_url: 'http://res.cloudinary.com/dufjsfgjv/image/upload/v1520976851/imitationGame_evekud.jpg',
                      user_id: 1
                      ),

movie6 = Movie.create(title: 'Get Out',
                      director: 'Jordan Peele',
                      description: 'Now that Chris (Daniel Kaluuya) and his girlfriend, Rose (Allison Williams), have reached the meet-the-parents milestone of dating, she invites him for a weekend getaway upstate with Missy and Dean. At first, Chris reads the family overly accommodating behavior as nervous attempts to deal with their daughter interracial relationship, but as the weekend progresses, a series of increasingly disturbing discoveries lead him to a truth that he never could have imagined.',
                      rating: 4.5,
                      year: 2015,
                      image_url: 'https://images-na.ssl-images-amazon.com/images/M/MV5BNTE2Nzg1NjkzNV5BMl5BanBnXkFtZTgwOTgyODMyMTI@._V1_SY1000_CR0,0,631,1000_AL_.jpg',
                      user_id: 1
                      ),

movie7 = Movie.create(title: 'La La Land',
                      director: 'Damien Chazelle',
                      description: 'Sebastian (Ryan Gosling) and Mia (Emma Stone) are drawn together by their common desire to do what they love. But as success mounts they are faced with decisions that begin to fray the fragile fabric of their love affair, and the dreams they worked so hard to maintain in each other threaten to rip them apart.',
                      rating: 3.5,
                      year: 2016,
                      image_url: 'https://t2.gstatic.com/images?q=tbn:ANd9GcRhFtgdSYQ89vUMjMJal2D8H39qBCkh9ptCEoZEsafOzkeQPTu2',
                      user_id: 1
                      ),

movie8 = Movie.create(title: 'Moana',
                      director: 'John Musker, Ron Clements',
                      description: 'An adventurous teenager sails out on a daring mission to save her people. During her journey, Moana meets the once-mighty demigod Maui, who guides her in her quest to become a master way-finder. Together they sail across the open ocean on an action-packed voyage, encountering enormous monsters and impossible odds. Along the way, Moana fulfills the ancient quest of her ancestors and discovers the one thing she always sought: her own identity.',
                      rating: 2,
                      year: 2016,
                      image_url: 'https://t3.gstatic.com/images?q=tbn:ANd9GcTJOaSVrzlgewVqmUgUz4W5ty2KUeHH6s-aYSIr_Qw8v2EBrtCS',
                      user_id: 1
                      ),

movie9 = Movie.create(title: 'Room',
                      director: 'Lenny Abrahamson',
                      description: 'ROOM tells the extraordinary story of Jack, a spirited 5-year-old who is looked after by his loving and devoted mother. Like any good mother, Ma dedicates herself to keeping Jack happy and safe, nurturing him with warmth and love and doing typical things like playing games and telling stories. Their life, however, is anything but typical--they are trapped--confined to a 10-by-10-foot space that Ma has euphemistically named Room. Ma has created a whole universe for Jack within Room, and she will stop at nothing to ensure that, even in this treacherous environment, Jack is able to live a complete and fulfilling life. But as Jack curiosity about their situation grows, and Ma resilience reaches its breaking point, they enact a risky plan to escape, ultimately bringing them face-to-face with what may turn out to be the scariest thing yet: the real world.',
                      rating: 5,
                      year: 2016,
                      image_url: 'https://t1.gstatic.com/images?q=tbn:ANd9GcSu9dR_6oOzsDvAq76vlBqPsyYNHdLw3jRRrmJVb7EBPTQBryV1',
                      user_id: 1
                      ),
movie10 = Movie.create(title: 'Predator',
                      director: 'John McTiernan',
                      description: 'Dutch (Arnold Schwarzenegger), a soldier of fortune, is hired by the U.S. government to secretly rescue a group of politicians trapped in Guatemala. But when Dutch and his team, which includes weapons expert Blain (Jesse Ventura) and CIA agent George (Carl Weathers), land in Central America, something is gravely wrong. After finding a string of dead bodies, the crew discovers they are being hunted by a brutal creature with superhuman strength and the ability to disappear into its surroundings.',
                      rating: 4,
                      year: 1987,
                      image_url: 'https://www.gstatic.com/tv/thumb/movieposters/10094/p10094_p_v8_ap.jpg',
                      user_id: 1
                      ),

movie11 = Movie.create(title: 'Snowden',
                      director: 'Oliver Stone',
                      description: 'Disillusioned with the intelligence community, top contractor Edward Snowden (Joseph Gordon-Levitt) leaves his job at the National Security Agency. He now knows that a virtual mountain of data is being assembled to track all forms of digital communication -- not just from foreign governments and terrorist groups, but from ordinary Americans. When Snowden decides to leak this classified information, he becomes a traitor to some, a hero to others and a fugitive from the law.',
                      rating: 2,
                      year: 2016,
                      image_url: 'https://res.cloudinary.com/dufjsfgjv/image/upload/v1490037155/snowden_yyjsqc.jpg',
                      user_id: 1
                      ),

movie12 = Movie.create(title: 'The Dark Knight',
                      director: 'Christopher Nolan',
                      description: 'The follow-up to Batman Begins, The Dark Knight reunites director Christopher Nolan and star Christian Bale, who reprises the role of Batman/Bruce Wayne in his continuing war on crime. With the help of Lt. Jim Gordon and District Attorney Harvey Dent, Batman sets out to destroy organized crime in Gotham for good. The triumvirate proves effective. But soon the three find themselves prey to a rising criminal mastermind known as The Joker, who thrusts Gotham into anarchy and forces Batman closer to crossing the fine line between hero and vigilante.',
                      rating: 5,
                      year: 2008,
                      image_url: 'https://res.cloudinary.com/dufjsfgjv/image/upload/v1490050492/thedarkknight_ux9gb1.jpg',
                      user_id: 1
                      ),
movie13 = Movie.create(title: 'Catch Me If You Can',
                      director: 'Steven Spielberg',
                      description: 'New Rochelle, the 1960s. High schooler Frank Abagnale Jr. idolizes his father, who is in trouble with the IRS. When his parents separate, Frank runs away to Manhattan with $25 in his checking account, vowing to regain dad losses and get his parents back together. Just a few years later, the FBI tracks him down in France; he is extradited, tried, and jailed for passing more than $4,000,000 in bad checks. Along the way, he is posed as a Pan Am pilot, a pediatrician, and an attorney. And, from nearly the beginning of this life of crime, he is been pursued by a dour FBI agent, Carl Hanratty. What starts as cat and mouse becomes something akin to father and son.',
                      rating: 5,
                      year: 2002,
                      image_url: 'https://res.cloudinary.com/dufjsfgjv/image/upload/v1490052273/Catch_Me_If_You_Can_2002_movie_qrq8nb.jpg',
                      user_id: 1
                      ),

movie14 = Movie.create(title: 'Logan',
                      director: 'James Mangold',
                      description: 'In the near future, a weary Logan (Hugh Jackman) cares for an ailing Professor X (Patrick Stewart) at a remote outpost on the Mexican border. His plan to hide from the outside world gets upended when he meets a young mutant (Dafne Keen) who is very much like him. Logan must now protect the girl and battle the dark forces that want to capture her.',
                      rating: 4,
                      year: 2017,
                      image_url: 'https://res.cloudinary.com/dufjsfgjv/image/upload/v1490052434/logan_hwoyhg.jpg',
                      user_id: 1
                      ),

movie15 = Movie.create(title: 'The Boss Baby',
                      director: 'Tom McGrath',
                      description: 'A new baby arrival impacts a family, told from the point of view of a delightfully unreliable narrator -- a wildly imaginative 7-year-old named Tim. The most unusual Boss Baby (Alec Baldwin) arrives at Tim home in a taxi, wearing a suit and carrying a briefcase. The instant sibling rivalry must soon be put aside when Tim discovers that Boss Baby is actually a spy on a secret mission, and only he can help thwart a dastardly plot that involves an epic battle between puppies and babies.',
                      rating: 3,
                      year: 2017,
                      image_url: 'https://res.cloudinary.com/dufjsfgjv/image/upload/v1490052688/bossbaby_truwqe.jpg',
                      user_id: 1
                      ),

movie16 = Movie.create(title: 'The Prestige',
                      director: 'Christopher Nolan',
                      description: 'In the end of the Nineteenth Century, in London, Robert Angier, his beloved wife Julia McCullough and Alfred Borden are friends and assistants of a magician. When Julia accidentally dies during a performance, Robert blames Alfred for her death and they become enemies. Both become famous and rival magicians, sabotaging the performance of the other on the stage. When Alfred performs a successful trick, Robert becomes obsessed trying to disclose the secret of his competitor with tragic consequences.',
                      rating: 5,
                      year: 2006,
                      image_url: 'https://res.cloudinary.com/dufjsfgjv/image/upload/v1490052855/Prestige_poster_is8cie.jpg',
                      user_id: 1
                      ),

movie17 = Movie.create(title: "You've Got Mail",
                      director: 'Nora Ephron',
                      description: "Struggling boutique bookseller Kathleen Kelly (Meg Ryan) hates Joe Fox (Tom Hanks), the owner of a corporate Foxbooks chain store that just moved in across the street. When they meet online, however, they begin an intense and anonymous Internet romance, oblivious of each other's true identity. Eventually Joe learns that the enchanting woman he's involved with is actually his business rival. He must now struggle to reconcile his real-life dislike for her with the cyber love he's come to feel.",
                      rating: 5,
                      year: 1998,
                      image_url: 'https://res.cloudinary.com/dufjsfgjv/image/upload/v1490052973/youvegotmail_g632gz.jpg',
                      user_id: 1
                      ),

movie18 = Movie.create(title: "Knocked Up",
                      director: 'Judd Apatow',
                      description: "When Alison Scott is promoted in E! Television, she goes to a night-club to celebrate with her older married sister Debbie. Alison meets the pothead reckless Ben Stone and while having a small talk with Ben, Debbie's husband Pete calls her to tell that their daughter has chicken pox. Debbie leaves the place but Allison stays with Ben, drinking and dancing along all night; completely wasted, they end up having a one night stand. Ben does not use condom and eight weeks later, Allison discovers that she is pregnant. She calls Ben and they decide to try to stay together and have the baby. However, Ben needs to grow-up first to raise a family of his own.",
                      rating: 2,
                      year: 2007,
                      image_url: 'https://res.cloudinary.com/dufjsfgjv/image/upload/v1490053171/Knockedupmp_mm4q22.jpg',
                      user_id: 1
                      ),

movie19 = Movie.create(title: "Hidden Figures",
                      director: 'Ted Melfi',
                      description: "HIDDEN FIGURES is the incredible untold story of Katherine G. Johnson (Taraji P. Henson), Dorothy Vaughan (Octavia Spencer) and Mary Jackson (Janelle Monáe)-brilliant African-American women working at NASA, who served as the brains behind one of the greatest operations in history: the launch of astronaut John Glenn into orbit, a stunning achievement that restored the nation's confidence, turned around the Space Race, and galvanized the world. The visionary trio crossed all gender and race lines to inspire generations to dream big.",
                      rating: 4,
                      year: 2017,
                      image_url: 'https://res.cloudinary.com/dufjsfgjv/image/upload/v1490053327/hiddenfigures_rqvlj5.jpg',
                      user_id: 1
                      ),

movie20 = Movie.create(title: "Wonder Woman",
                      director: 'Patty Jenkins',
                      description: "Before she was Wonder Woman (Gal Gadot), she was Diana, princess of the Amazons, trained to be an unconquerable warrior. Raised on a sheltered island paradise, Diana meets an American pilot (Chris Pine) who tells her about the massive conflict that's raging in the outside world. Convinced that she can stop the threat, Diana leaves her home for the first time. Fighting alongside men in a war to end all wars, she finally discovers her full powers and true destiny.",
                      rating: 5,
                      year: 2017,
                      image_url: 'https://res.cloudinary.com/dufjsfgjv/image/upload/v1490053463/wonderwoman_vkqypd.jpg',
                      user_id: 1
                      ),

movie21 = Movie.create(title: "Mad Max: Fury Road",
                      director: 'George Miller',
                      description: "Years after the collapse of civilization, the tyrannical Immortan Joe enslaves apocalypse survivors inside the desert fortress the Citadel. When the warrior Imperator Furiosa (Charlize Theron) leads the despot's five wives in a daring escape, she forges an alliance with Max Rockatansky (Tom Hardy), a loner and former captive. Fortified in the massive, armored truck the War Rig, they try to outrun the ruthless warlord and his henchmen in a deadly high-speed chase through the Wasteland.",
                      rating: 3,
                      year: 2015,
                      image_url: 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTUyMTE0ODcxNF5BMl5BanBnXkFtZTgwODE4NDQzNTE@._V1_UY1200_CR97,0,630,1200_AL_.jpg',
                      user_id: 1
                      ),
movie22 = Movie.create(title: "The Godfather",
                      director: 'Francis Ford Coppola',
                      description: "Widely regarded as one of the greatest films of all time, this mob drama, based on Mario Puzo's novel of the same name, focuses on the powerful Italian-American crime family of Don Vito Corleone (Marlon Brando). When the don's youngest son, Michael (Al Pacino), reluctantly joins the Mafia, he becomes involved in the inevitable cycle of violence and betrayal. Although Michael tries to maintain a normal relationship with his wife, Kay (Diane Keaton), he is drawn deeper into the family business.",
                      rating: 5,
                      year: 1972,
                      image_url: 'https://static.rogerebert.com/uploads/movie/movie_poster/the-godfather-1972/large_d4KNaTrltq6bpkFS01pYtyXa09m.jpg',
                      user_id: 1
                      ),

movie23 = Movie.create(title: "E.T. the Extra-Terrestrial",
                      director: 'Steven Spielberg',
                      description: "After a gentle alien becomes stranded on Earth, the being is discovered and befriended by a young boy named Elliott (Henry Thomas). Bringing the extraterrestrial into his suburban California house, Elliott introduces E.T., as the alien is dubbed, to his brother and his little sister, Gertie (Drew Barrymore), and the children decide to keep its existence a secret. Soon, however, E.T. falls ill, resulting in government intervention and a dire situation for both Elliott and the alien.",
                      rating: 5,
                      year: 1982,
                      image_url: 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTQ2ODFlMDAtNzdhOC00ZDYzLWE3YTMtNDU4ZGFmZmJmYTczXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UY1200_CR69,0,630,1200_AL_.jpg',
                      user_id: 1
                      ),

movie24 = Movie.create(title: "Power Rangers",
                      director: 'Dean Israelite',
                      description: "Five ordinary teens must become something extraordinary when they learn that their small town of Angel Grove - and the world - is on the verge of being obliterated by an alien threat. Chosen by destiny, our heroes quickly discover they are the only ones who can save the planet. But to do so, they will have to overcome their real-life issues and before it's too late, band together as the Power Rangers.
",
                      rating: 2,
                      year: 2017,
                      image_url: 'http://res.cloudinary.com/dufjsfgjv/image/upload/v1520976756/powerrangers_jpjjfr.jpg',
                      user_id: 1
                      ),

movie25 = Movie.create(title: "Chips",
                      director: 'Dax Shepard',
                      description: "Jon Baker and Frank Ponch Poncherello have just joined the California Highway Patrol in Los Angeles, but for very different reasons. Baker is a former motorbike rider who's trying to put his life and marriage back together. Poncherello is a cocky, undercover FBI agent who's investigating a multimillion dollar heist that may be an inside job. Forced to work together, the inexperienced rookie and hardened veteran begin clashing instead of clicking while trying to nab the bad guys.",
                      rating: 4,
                      year: 2017,
                      image_url: 'https://t3.gstatic.com/images?q=tbn:ANd9GcRUO7VInvEbef4vqAFgFzSQ6aieDjmMLaL-zngg78LP8vhqmcQB',
                      user_id: 1
                      ),
movie26 = Movie.create(title: "Rogue One: A Star Wars Story",
                      director: 'Gareth Edwards',
                      description: "Former scientist Galen Erso lives on a farm with his wife and young daughter Jyn. His peaceful existence comes crashing down when the evil Orson Krennic takes him away from his beloved family. Many years later, Galen is now the Empire's lead engineer for the most powerful weapon in the galaxy, the Death Star. Knowing that her father holds the key to its destruction, a vengeful Jyn joins forces with a spy and other resistance fighters to steal the space station's plans for the Rebel Alliance.",
                      rating: 5,
                      year: 2016,
                      image_url: 'https://a.dilcdn.com/bl/wp-content/uploads/sites/6/2016/10/rogueone_onesheetA.jpg',
                      user_id: 1
                      ),
movie27 = Movie.create(title: "Passengers",
                      director: 'Morten Tyldum',
                      description: "On a routine journey through space to a new home, two passengers, sleeping in suspended animation, are awakened 90 years too early when their ship malfunctions. As Jim and Aurora face living the rest of their lives on board, with every luxury they could ever ask for, they begin to fall for each other, unable to deny their intense attraction until they discover the ship is in grave danger. With the lives of 5,000 sleeping passengers at stake, only Jim and Aurora can save them all.",
                      rating: 3,
                      year: 2016,
                      image_url: 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTk4MjU3MDIzOF5BMl5BanBnXkFtZTgwMjM2MzY2MDI@._V1_UX182_CR0,0,182,268_AL_.jpg',
                      user_id: 1
                      ),
movie28 = Movie.create(title: "Doctor Strange",
                      director: 'Scott Derrickson',
                      description: "Dr. Stephen Strange's (Benedict Cumberbatch) life changes after a car accident robs him of the use of his hands. When traditional medicine fails him, he looks for healing, and hope, in a mysterious enclave. He quickly learns that the enclave is at the front line of a battle against unseen dark forces bent on destroying reality. Before long, Strange is forced to choose between his life of fortune and status or leave it all behind to defend the world as the most powerful sorcerer in existence.",
                      rating: 4,
                      year: 2016,
                      image_url: 'http://res.cloudinary.com/dufjsfgjv/image/upload/v1520977047/doctor_strange_mpo0hg.jpg',
                      user_id: 1
                      ),
movie30 = Movie.create(title: "Hacksaw Ridge",
                      director: 'Mel Gibson',
                      description: "The true story of Pfc. Desmond T. Doss (Andrew Garfield), who won the Congressional Medal of Honor despite refusing to bear arms during WWII on religious grounds. Doss was drafted and ostracized by fellow soldiers for his pacifist stance but went on to earn respect and adoration for his bravery, selflessness and compassion after he risked his life -- without firing a shot -- to save 75 men in the Battle of Okinawa.",
                      rating: 5,
                      year: 2016,
                      image_url: 'https://upload.wikimedia.org/wikipedia/en/8/8a/Hacksaw_Ridge_poster.png',
                      user_id: 1
                      ),
movie31 = Movie.create(title: "Trolls",
                      director: 'Mike Mitchell',
                      description: "After the Bergens invade Troll Village, Poppy (Anna Kendrick), the happiest Troll ever born, and the overly-cautious, curmudgeonly Branch (Justin Timberlake) set off on a journey to rescue her friends. Their mission is full of adventure and mishaps, as this mismatched duo try to tolerate each other long enough to get the job done.",
                      rating: 3,
                      year: 2016,
                      image_url: 'https://t0.gstatic.com/images?q=tbn:ANd9GcRCdW5kQKWw8ILd_Nff9gfV0C92lO5fhJ9HGu_j1SDpquN0EG8L',
                      user_id: 1
                      ),
movie31 = Movie.create(title: "Suicide Squad",
                      director: 'David Ayer',
                      description: "Figuring they're all expendable, a U.S. intelligence officer decides to assemble a team of dangerous, incarcerated supervillains for a top-secret mission. Now armed with government weapons, Deadshot (Will Smith), Harley Quinn (Margot Robbie), Captain Boomerang, Killer Croc and other despicable inmates must learn to work together. Dubbed Task Force X, the criminals unite to battle a mysterious and powerful entity, while the diabolical Joker (Jared Leto) launches an evil agenda of his own.",
                      rating: 2,
                      year: 2016,
                      image_url: 'https://upload.wikimedia.org/wikipedia/en/5/50/Suicide_Squad_%28film%29_Poster.png',
                      user_id: 1
                      ),
movie32 = Movie.create(title: "Moonlight",
                      director: 'Barry Jenkins',
                      description: "A look at three defining chapters in the life of Chiron, a young black man growing up in Miami. His epic journey to manhood is guided by the kindness, support and love of the community that helps raise him.",
                      rating: 5,
                      year: 2016,
                      image_url: 'https://images-na.ssl-images-amazon.com/images/M/MV5BNzQxNTIyODAxMV5BMl5BanBnXkFtZTgwNzQyMDA3OTE@._V1_UX182_CR0,0,182,268_AL_.jpg',
                      user_id: 1
                      ),
movie33 = Movie.create(title: "Deadpool",
                      director: 'Tim Miller',
                      description: "Wade Wilson (Ryan Reynolds) is a former Special Forces operative who now works as a mercenary. His world comes crashing down when evil scientist Ajax (Ed Skrein) tortures, disfigures and transforms him into Deadpool. The rogue experiment leaves Deadpool with accelerated healing powers and a twisted sense of humor. With help from mutant allies Colossus and Negasonic Teenage Warhead (Brianna Hildebrand), Deadpool uses his new skills to hunt down the man who nearly destroyed his life.",
                      rating: 5,
                      year: 2016,
                      image_url: 'https://www.impawards.com/2016/posters/deadpool_ver4.jpg',
                      user_id: 1
                      ),
movie34 = Movie.create(title: "The Conjuring",
                      director: 'James Wan',
                      description: "In 1970, paranormal investigators and demonologists Lorraine (Vera Farmiga) and Ed (Patrick Wilson) Warren are summoned to the home of Carolyn (Lili Taylor) and Roger (Ron Livingston) Perron. The Perrons and their five daughters have recently moved into a secluded farmhouse, where a supernatural presence has made itself known. Though the manifestations are relatively benign at first, events soon escalate in horrifying fashion, especially after the Warrens discover the house's macabre history.",
                      rating: 4,
                      year: 2013,
                      image_url: 'https://t2.gstatic.com/images?q=tbn:ANd9GcQnHDbJFDDZYC5g9gHa6-NqBE8JUet_iRIPXJym8CtaHsVQa76M',
                      user_id: 1
                      ),
movie35 = Movie.create(title: "Inside Out",
                      director: 'Pete Docter, Ronnie del Carmen',
                      description: "Riley (Kaitlyn Dias) is a happy, hockey-loving 11-year-old Midwestern girl, but her world turns upside-down when she and her parents move to San Francisco. Riley's emotions -- led by Joy (Amy Poehler) -- try to guide her through this difficult, life-changing event. However, the stress of the move brings Sadness (Phyllis Smith) to the forefront. When Joy and Sadness are inadvertently swept into the far reaches of Riley's mind, the only emotions left in Headquarters are Anger, Fear and Disgust.",
                      rating: 4,
                      year: 2015,
                      image_url: 'https://t0.gstatic.com/images?q=tbn:ANd9GcTtZdvrahQxfjGkSBJCS-uiZKUfJNH4ddsqgCbV5oFkQiQ-tszE',
                      user_id: 1
                      ),
movie36 = Movie.create(title: "The Matrix",
                      director: 'Lana Wachowski, Lilly Wachowski',
                      description: "Neo (Keanu Reeves) believes that Morpheus (Laurence Fishburne), an elusive figure considered to be the most dangerous man alive, can answer his question -- What is the Matrix? Neo is contacted by Trinity (Carrie-Anne Moss), a beautiful stranger who leads him into an underworld where he meets Morpheus. They fight a brutal battle for their lives against a cadre of viciously intelligent secret agents. It is a truth that could cost Neo something more precious than his life.",
                      rating: 4,
                      year: 1999,
                      image_url: 'https://images-na.ssl-images-amazon.com/images/M/MV5BNzQzOTk3OTAtNDQ0Zi00ZTVkLWI0MTEtMDllZjNkYzNjNTc4L2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UY1200_CR84,0,630,1200_AL_.jpg',
                      user_id: 1
                      ),
movie37 = Movie.create(title: "Whiplash",
                      director: 'Damien Chazelle',
                      description: "Andrew Neiman (Miles Teller) is an ambitious young jazz drummer, in pursuit of rising to the top of his elite music conservatory. Terence Fletcher (J.K. Simmons), an instructor known for his terrifying teaching methods, discovers Andrew and transfers the aspiring drummer into the top jazz ensemble, forever changing the young man's life. But Andrew's passion to achieve perfection quickly spirals into obsession, as his ruthless teacher pushes him to the brink of his ability and his sanity.",
                      rating: 5,
                      year: 2014,
                      image_url: 'https://t3.gstatic.com/images?q=tbn:ANd9GcS_IwW5-_mWA1PXiPG4qEhLC6Q3vntQd7Bzgs_YE7HHFifItn2T',
                      user_id: 1
                      ),
movie38 = Movie.create(title: "Nightcrawler",
                      director: 'Dan Gilroy',
                      description: "Los Angeles denizen Louis Bloom (Jake Gyllenhaal) survives by scavenging and petty theft. He stumbles into a new career as a cameraman and -- armed with a camcorder and police scanner -- begins nocturnal forays across the city in search of shocking and grisly crimes. When he catches the eye of a shopworn news director (Rene Russo) who welcomes the chance to raise her station's ratings, Louis goes to increasingly greater lengths to catch the money shot.",
                      rating: 5,
                      year: 2014,
                      image_url: 'https://t0.gstatic.com/images?q=tbn:ANd9GcSmbiO41jmiTPaGUv1I61kVqe-JPxfpkSfw20i6QfvGv5Zqd7jP',
                      user_id: 1
                      ),
movie39 = Movie.create(title: "Law Abiding Citizen",
                      director: 'F. Gary Gray',
                      description: "Clyde Shelton (Gerard Butler) is an honorable family man, until the day his wife and daughter are murdered in a home invasion. He hopes for justice, but a rising prosecutor named Nick Rice (Jamie Foxx) cuts a deal with one of the killers in exchange for testimony. Ten years later, that man is found dead and Shelton coolly admits his guilt. Then he hands Rice an ultimatum: Fix the broken legal system or suffer the consequences.",
                      rating: 5,
                      year: 2009,
                      image_url: 'https://www.gstatic.com/tv/thumb/movieposters/3632501/p3632501_p_v8_aa.jpg',
                      user_id: 1
                      ),
movie40 = Movie.create(title: "Men in Black",
                      director: 'Barry Sonnenfeld',
                      description: "They are the best-kept secret in the universe. Working for a highly funded yet unofficial government agency, Kay (Tommy Lee Jones) and Jay (Will Smith) are the Men in Black, providers of immigration services and regulators of all things alien on Earth. While investigating a series of unregistered close encounters, the MIB agents uncover the deadly plot of an intergalactic terrorist who is on a mission to assassinate two ambassadors from opposing galaxies currently in residence in New York City.",
                      rating: 5,
                      year: 1997,
                      image_url: 'https://www.gstatic.com/tv/thumb/movieposters/19526/p19526_p_v8_aa.jpg',
                      user_id: 1
                      ),
movie41 = Movie.create(title: "Forgetting Sarah Marshall",
                      director: 'Nicholas Stoller',
                      description: "Struggling musician Peter Bretter (Jason Segel) is better-known as the boyfriend of TV star Sarah Marshall (Kristen Bell). After she unceremoniously dumps him, he feels lost and alone but makes a last-ditch bid to get over it by going to Hawaii. However, she and her new boyfriend (Russell Brand) are there in the same hotel.",
                      rating: 5,
                      year: 2008,
                      image_url: 'https://images-na.ssl-images-amazon.com/images/I/51c8wZcMS1L.jpg',
                      user_id: 1
                      ),
movie42 = Movie.create(title: "Harry Potter and the Goblet of Fire",
                      director: 'Mike Newell',
                      description: "The fourth movie in the Harry Potter franchise sees Harry (Daniel Radcliffe) returning for his fourth year at Hogwarts School of Witchcraft and Wizardry, along with his friends, Ron (Rupert Grint) and Hermione (Emma Watson). There is an upcoming tournament between the three major schools of magic, with one participant selected from each school by the Goblet of Fire. When Harry's name is drawn, even though he is not eligible and is a fourth player, he must compete in the dangerous contest.",
                      rating: 5,
                      year: 2005,
                      image_url: 'https://www.gstatic.com/tv/thumb/movieposters/90599/p90599_p_v8_aq.jpg',
                      user_id: 1
                      )



25.times do
  user = User.new(username: Faker::Internet.user_name,
    password: Faker::Internet.password);
  if user.save

    12.times do
      Review.create(movie_id: Movie.all.sample.id, user_id: user.id,
      rating: [4, 5, 5].sample,
      body: sample_responses.sample)
    end
  end
end
