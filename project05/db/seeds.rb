# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

article_attributes = [
                        {:title => 'Lorem Ipsum',
                         :author => Author.new(:name => 'Lorem Illium'),
                         :body => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi non enim eget lacus dignissim sollicitudin vitae id erat. Fusce tortor ligula, lobortis a lobortis ac, cursus non lorem. Quisque non mauris leo. Sed aliquet augue ac orci pretium faucibus. Proin tristique pellentesque ultrices. Praesent convallis, sem et imperdiet fermentum, est dui consectetur metus, id pellentesque est erat nec lectus. Nunc quis dui leo, eu sodales lacus. Suspendisse potenti. Sed egestas sem a ante fringilla consequat. Cras tortor nibh, elementum eu sollicitudin a, bibendum eu dolor. Nullam posuere fermentum nunc, a egestas ipsum accumsan tincidunt.

                         Ut venenatis, mi at ultrices dictum, odio purus lacinia justo, et commodo massa nulla a orci. Integer ornare magna non sem fermentum nec gravida ligula accumsan. Integer ligula mauris, rutrum sed lobortis quis, facilisis vitae eros. Morbi sagittis fringilla lectus vestibulum fermentum. Integer turpis erat, eleifend vel pretium et, semper at magna. Nullam vulputate tortor nulla. Vestibulum quis augue nisi. Quisque congue purus eget justo condimentum vel volutpat metus egestas. Nullam laoreet lorem nec libero fermentum ac varius felis adipiscing. Mauris eu eros vel nibh tincidunt pellentesque. Aliquam pellentesque placerat orci, placerat placerat leo scelerisque non. Cras egestas tristique enim non placerat. Cras non purus at nunc mollis eleifend vel et nulla. Sed tincidunt, est faucibus blandit suscipit, felis odio lobortis erat, in ultricies nisi est eu justo. Etiam posuere massa sit amet est auctor a consectetur tortor volutpat.

                         Praesent eget augue ligula, et consequat urna. Quisque sed augue at velit vestibulum scelerisque commodo eu quam. Suspendisse ut erat ligula. Maecenas vestibulum risus ac massa posuere malesuada. Fusce nec risus sapien. Nullam gravida, mauris a gravida congue, sem ante vulputate elit, eget facilisis enim nulla eu dolor. Mauris ac tortor non dolor mattis ornare ac vitae libero. Phasellus ultricies mi vitae ligula vestibulum mollis. Sed rhoncus, eros sit amet dictum dignissim, arcu elit interdum sem, ac aliquam mi arcu ut justo. Donec et iaculis felis. Quisque porta porta nisi, vel dictum diam fringilla et. Pellentesque luctus dignissim ipsum, eget semper augue euismod quis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Cras tortor leo, gravida sollicitudin porttitor et, egestas id turpis. Quisque pulvinar volutpat convallis. Maecenas vulputate sem eu dolor cursus vehicula viverra nec mi. Cras sapien sapien, volutpat ut fermentum at, vehicula sed erat.

                         Ut tempor pretium diam quis gravida. Vivamus eu enim nibh, nec interdum est. Proin semper suscipit arcu vitae mollis. Integer vitae arcu mauris. Proin sodales posuere gravida. Pellentesque ut felis velit, ut malesuada libero. Mauris porttitor massa et risus lacinia semper. Quisque at justo magna, ac pretium mi. Donec non tortor id diam faucibus rutrum ut quis erat. Etiam consequat laoreet eleifend. Nulla elit ante, tempus sit amet bibendum et, cursus sit amet tellus. Nulla ultricies lorem nec mauris suscipit pharetra. Cras a quam id massa lobortis malesuada. Vivamus at lacinia arcu. Fusce pellentesque ante eu arcu tempor id tristique nisl gravida. Morbi fermentum, leo sit amet vehicula egestas, urna sem dapibus nisl, eget aliquet eros arcu a neque. Nunc sodales eleifend nunc non fringilla. Vestibulum fermentum faucibus egestas. Vestibulum consequat odio et neque luctus mollis.

                         Phasellus sed velit odio, et feugiat dolor. Nullam quis condimentum tellus. Phasellus a eros nibh. Vestibulum erat urna, volutpat sit amet condimentum et, euismod tincidunt leo. Vestibulum sodales aliquam purus quis tincidunt. Nulla ac leo risus, eu cursus magna. Vestibulum suscipit varius turpis, sit amet congue arcu ullamcorper vitae. Sed venenatis dignissim varius. Suspendisse hendrerit vehicula nibh venenatis ullamcorper. Aenean blandit feugiat tellus, in ultrices libero porttitor nec. In condimentum tempor dui non vehicula. Integer et elementum tellus. Proin adipiscing tempus urna in euismod.'
                        },
                        {:title => 'The Invisible Man',
                         :author => Author.new(:name => 'Hugh Go'),
                         :body => 'Zepto duonhoro kio ul, bo zorgi reciprokeco lia. Oble kvanta diskriminacio ko mis, kie triangulo punktokomo postesigno ke, cento poste dua e. Frota apostrofo malantaŭa tro fo, ve eko minca deksesuma. Nenia iufoje nk vol.

                         Alies minimume daralbajdo vic os, devi makro respondeci tiu de. Ree ti povus maksimume, nur finno esceptinte oj. Io dev estro konjunkcio, ja preterito senobjekta log. Ore faka devi ok. End jaro pentekosto em.

                         Sin dekono eksploda re, speco krome frazenkondukilo sep ar, fundamenta kazablanko malprofitanto hu sur. Da sor orda ilion septiliono. Tie dekoj frato ac, pebi nedifina finaĵvorto en pre. Nei ba land stif elrigardi, sia kian fundamento tempopunkto uk, avo fari gramatika il. Vir ho afro kunigi, ies pere amen tien ot, tempismo fratineto kvintiliono sed om.'
                        },
                        {:title => 'The Biggest Mistake Ever',
                         :author => Author.new(:name => 'Ben Dover'),
                         :body => 'The biggest mistake ever was writing this article'     
                        },
                        {:title => 'Playing on faith',
                         :author => Author.new(:name => 'Lori Obert'),
                         :body => 'When you walk into the gymnasium, you are confronted with the success. Banners hang on the walls to remind you of past teams at Faith Christian Academy that captured championships. They set a high bar for the aspirations of todays teams.

                         "The tradition, it is pretty important. It is kind of a lot to live up to," says Abby Chapman, a member of the girls varsity basketball team.

                         The girls varsity basketball team is made up of individuals who bring different qualities to the team. They are all different, including Amanda Aguero.

                         When you see Amanda on the court, you might be drawn by the obvious visual difference that she was born without a left arm. It is a difference that some might see as limiting. In her life, Amanda has heard those doubts.

                         Theyre like; oh youre not going to be able to do this. Youre probably not going to be able to do this. "That just always stirred up a fire in me," says Amanda. "I can do that. Dont tell me I cant do that."

                         This year, she tried out for the varsity team at Faith Christian Academy. While she has always liked playing basketball, she had not made a team in middle school and last year played on the C team.

                         This year would be different.

                         "I didnt put her on the team for charity. She earned her spot on this team," says Rick Long, head coach of the team. "Her desire to achieve things shes never done makes everyone else want to do more."

                         Making the girls varsity basketball team is not the only thing Amanda has done that might surprise some. She plays guitar in the school worship team, a skill that is self-taught. Amanda also plays soccer, softball, rock climbs and mountain bikes.

                         "Every now and then I would have questions in the back of my mind, how is this going to turn out?" says Al Aguero, Amandas father. "But you know Amanda never really came to me and said, help me."

                         "She has always learned to do things in her own way," says Annette Aguero, Amandas mother. "If there is a will, she will figure out the way."

                         So far this season the girls varsity basketball team has a record of 13-6. Amanda, who is not a starter, has come off the bench to hit three of four three point shots this season. Amandas play has pushed her teammates to work past adversity.

                         "She just makes us want to push ourselves even harder," says Abby Chapman, a teammate of Amanda.

                         If you take the time to watch Amanda play and watch how she lives, you realize what makes her different isnt anything you can see.

                         "She brings that heart that you cant coach," says Long. "You can teach skill all day long, but I cant teach heart. They have to bring it and she brings that."' 
                        },
                        {:title => 'Creating A New Buzz',
                         :author => Author.new(:name => 'Gillian Spiders'),
                         :body => 'Theres a new buzz going around and its getting a lot of attention. You guessed it. Its the new iPhone 4 freshly introduced to Verizon.
                         
                         Whether or not the new iPhone has been out for a while, it is guaranteed to make the Verizon customer base sky rocket. Or at least make it look that way.
                         
                         It will be interesting to see what comes of the new iPhone. Can Verizon handle the traffic? Only time will tell.'  
                        },
                        {:title => 'Music',
                         :author => Author.new(:name => 'Paul Beveridge'),
                         :body => 'My name is Paul Beveridge, Im a local artist, and I really love writing music. I was born, and also grew up in, Greeley, CO. I love my community and I just love people. 

                         I am in the midst of writing a new album project entitled, “Ebenezer.”  The name Ebenezer was given to a rock in 1 Samuel and literally means “stone of help”; it stood as a monument to a place and to a time where people experienced something beyond themselves in their helplessness.  They experienced…

                         Im sure you know where I am going with this and we’re getting there too fast.  Healthy spirituality has never fit our cultures ideas of productivity or fruitfulness; understanding takes time.  Its going to require inductive reasoning and objective thinking, but also the sharing of tables and stories.  Thats what the Ebenezer project is all about- sharing meals and kitchens while we trade stories and questions in turn making monuments to these memories.

                         I have been taking the past few months to hear stories of times that God has been profoundly present in the lives of the community around me.  I have written just a few songs about a few stories with the basic concept and skeleton being that any one song itself works as an Ebenezer, a monument to God’s being here, for that person and in turn the album becomes an Ebenezer of the community.

                         Again, I am going to press this idea of conversation vs. commerce.  For some, “God” is a loaded word.  By no means do I wish for the listener to feel pressured or guilty and for those who already subscribe to belief in God, I certainly hope these songs won’t add to your spiritual arsenal or shine your religious trophies.  The ultimate hope for this project is that we, as listeners, will be invited to embark on each others journeys as apposed to being held hostage to a spiritual belief.

                         The project is projected to come out in the summer of 2011, updates will be posted at this location as well as at my facebook page.  I will continue to post various rough drafts for you to hear on tumblr.  I really hope that you love what you read and hear!'  
                        },
                        {:title => 'Amys Story',
                         :author => Author.new(:name => 'Paul Bever'),
                         :body => 'Amy told me a story about a falling out she had with a friend.  She came back from snowboarding and wept in the car to a different friend who sat and kindly listened to her.
                         The simple beauty of this story is that God found Amy through the most common of circumstances; a friend, a car, a parking lot…and he loved her.
                         How beautiful it is to be found by a romance in the smaller places of our lives.'  
                        },
                        {:title => 'Thought of the Day #1',
                         :author => Author.new(:name => 'Ben Harris'),
                         :body => 'Being driven isnt enough, You must find your passion that directs you.'  
                        },
                        {:title => 'Cheese Is Great',
                         :author => Author.new(:name => 'Seymore Butts'),
                         :body => 'My how I love cheese. Doesnt it just go great on just about everything you put it on?
                         
                         I mean think about it. Tacos, Burritos, Nachos.... pretty much everything that ends in "os" will go great with cheese. Except Cheerios. Dont try that. That might be nasty.
                         
                         In case you have missed out on this phenonmenon called cheese, I suggest you try it. You wont regret it.'  
                        },
                        {:title => 'Untitled',
                         :author => Author.new(:name => 'Ben The Beggar'),
                         :body => 'From oil spill messes

                         To girls in short dresses

                         This world is losing its touch

                         I want to do good, 

                         and i know that I should

                         but it all just seems too much'  
                        },
                        {:title => 'The Latter',
                         :author => Author.new(:name => 'Eileen Dover'),
                         :body => 'Humpty Dumpty sat on a wall.
                         Humpty Dumpty had a... short fall.
                         Humpty Dumpty got up and wondered what pushed him.
                         The end.
                         
                         PS - I hope you enjoyed this story. I made it myself.'  
                        }
                        
                      ]
author_attributes = [
                      {:name => 'Pablo Picasso'},
                      {:name => 'Johnathon Skinner'},
                      {:name => 'Pupu McGruber'},
                    ]

author_attributes.each do |attributes|
  Author.create!(attributes)
end
                      
article_attributes.each do |attributes|
  Article.create!(attributes)
end
                        