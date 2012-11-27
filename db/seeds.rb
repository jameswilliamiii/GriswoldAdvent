# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

DailyQuote.destroy_all

DailyQuote.create [
                    { show_date: 1,  quote: "Ellen: Clark, Audrey's frozen from the waist down. Clark: That's all part of the experience, honey." },
                    { show_date: 2,  quote: "Clark: Oh, I was just smelling - smiling. I was just blouse - browsing. I, uh, heh heh. Well, I guess it just wouldn't... Oh hee hee, it wouldn't be the Christmas shopping season if the stores were any less hooter than they - HOTTER than they are. Whew. It is warm in here, isn't it? Mary: You have your coat on. Clark: Yes, oh do I? Yeah, it is a bit nipply out. I mean nippy. What am I saying, nipple? Huh, there is a nip in the air." },
                    { show_date: 3,  quote: "Rusty Griswold: Dad, this tree won't fit in our back yard. Clark: It's not going in the yard, Russ. It's going in the living room." },
                    { show_date: 4,  quote: "Todd: Hey Griswold. Where do you think you're gonna put a tree that big? Clark: Bend over and I'll show you. Todd: You've got a lot of nerve talking to me like that Griswold. Clark: I wasn't talking to you." },
                    { show_date: 5,  quote: "Mr. Frank Shirley: [picks up the phone receiver] Get me somebody. Anybody. And get me somebody while I'm waiting." },
                    { show_date: 6,  quote: "Audrey: Do you sleep with your brother? Do you know how sick and twisted that is? Ellen: Well, I'm sleeping with your father. Don't be so dramatic." },
                    { show_date: 7,  quote: "Clark: Merry Christmas. Merry Christmas, Merry Christmas, Merry Christmas, kiss my ass. Kiss his ass. Kiss your ass. Happy Hanukkah." },
                    { show_date: 8,  quote: "Clark: So, when did you get the tenament on wheels? Eddie: Oh, that uh, that there's an RV. Yeah, yeah, I borrowed it off a buddy of mine. He took my house, I took the RV. It's a good looking vehicle, ain't it? Clark: Yeah, it looks so nice parked in the driveway. Eddie: Yeah, it sure does. But, don't you go falling in love with it now, because, we're taking it with us when we leave here next month." },
                    { show_date: 9,  quote: "[after Clark fails at lighting all the exterior Christmas lights at the 'lighting ceremony' in front of the entire family] Frances: Talk about pissing your money away. I hope you kids see what a silly waste of resources this was. Audrey: He worked really hard, Grandma. Art: So do washing machines." },
                    { show_date: 10, quote: "Eddie: You surprised to see us, Clark? Clark: Oh, Eddie... If I woke up tomorrow with my head sewn to the carpet, I wouldn't be more surprised than I am now." },
                    { show_date: 11, quote: "Eddie: I don't know if I oughta go sailin' down no hill with nothin' between the ground and my brains but a piece of government plastic. Clark: Do you really think it matters, Eddie?" },
                    { show_date: 12, quote: "Ellen: What are you looking at? Clark: Oh, the silent majesty of a winter's morn... the clean, cool chill of the holiday air... an asshole in his bathrobe, emptying a chemical toilet into my sewer... [Eddie, in the driveway, is draining the RV's toilet] Eddie: Shitter was full. Clark: Ah, yeah. You checked our shitters, honey?" },
                    { show_date: 13, quote: "Eddie: Don't forget the rubber sheets and gerbils." },
                    { show_date: 14, quote: "Eddie: If you scratch his belly, Clark, he will love you till the day you die. Clark: I really shouldn't, Eddie. My hands are all chapped." },
                    { show_date: 15, quote: "Clark: Can I refill your eggnog for you? Get you something to eat? Drive you out to the middle of nowhere and leave you for dead? Eddie: Naw, I'm doing just fine, Clark." },
                    { show_date: 16, quote: "Clark: I simply solved the problem. We needed a coffin... Er, a tree. There are no lots open on Christmas Eve. Lewis burned down my tree so I replaced it as best I could. Voila. Ellen: Are you okay? Clark: [the newel post is wobbly so Clark cuts it off with a chain saw] Fixed the newel post." },
                    { show_date: 17, quote: "Clark: Hey, Kids, I heard on the news that an airline pilot spotted Santa's sleigh on its way in from New York City. Eddie: [after a pause] You serious, Clark? " },
                    { show_date: 18, quote: "Eddie: Every time Catherine revved up the microwave, I'd piss my pants and forget who I was for about half an hour or so." },
                    { show_date: 19, quote: "Aunt Bethany: What's that sound? You hear it? It's a funny squeaky sound. Uncle Lewis: You couldn't hear a dump truck driving through a nitroglycerin plant." },
                    { show_date: 20, quote: "Ellen: Clark, I think it'd be best if everyone went home... before things get worse. Clark: WORSE? How could things get any worse? Take a look around here, Ellen. We're at the threshold of hell." },
                    { show_date: 21, quote: "Clark: Hey! If any of you are looking for any last-minute gift ideas for me, I have one. I'd like Frank Shirley, my boss, right here tonight. I want him brought from his happy holiday slumber over there on Melody Lane with all the other rich people and I want him brought right here, with a big ribbon on his head, and I want to look him straight in the eye and I want to tell him what a cheap, lying, no-good, rotten, four-flushing, low-life, snake-licking, dirt-eating, inbred, overstuffed, ignorant, blood-sucking, dog-kissing, brainless, dickless, hopeless, heartless, fat-ass, bug-eyed, stiff-legged, spotty-lipped, worm-headed sack of monkey shit he is! Hallelujah! Holy shit! Where's the Tylenol?" },
                    { show_date: 22, quote: "Clark: Where is Eddie? He usually eats these goddam things. Cousin Catherine Johnson: Not recently, Clark. He read that squirrels were high in cholesterol." },
                    { show_date: 23, quote: "Mrs. Helen Shirley: Yes officer, it seems my husband's been abducted. The man was, was wearing a blue leisure suit. Plates were from Kansas. He was a huge, beastly, bulging man." },
                    { show_date: 24, quote: "Art: It was an ugly tree anyway." },
                    { show_date: 25, quote: "Clark: Where do you think you're going? Nobody's leaving. Nobody's walking out on this fun, old-fashioned family Christmas. No, no. We're all in this together. This is a full-blown, four-alarm holiday emergency here. We're gonna press on, and we're gonna have the hap, hap, happiest Christmas since Bing Crosby tap-danced with Danny fucking Kaye. And when Santa squeezes his fat white ass down that chimney tonight, he's gonna find the jolliest bunch of assholes this side of the nuthouse." }
                  ]