# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

article_attributes = [
                        {:title => 'Lorem Ipsum',
                         :author_id => 1,
                         :body => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi non enim eget lacus dignissim sollicitudin vitae id erat. Fusce tortor ligula, lobortis a lobortis ac, cursus non lorem. Quisque non mauris leo. Sed aliquet augue ac orci pretium faucibus. Proin tristique pellentesque ultrices. Praesent convallis, sem et imperdiet fermentum, est dui consectetur metus, id pellentesque est erat nec lectus. Nunc quis dui leo, eu sodales lacus. Suspendisse potenti. Sed egestas sem a ante fringilla consequat. Cras tortor nibh, elementum eu sollicitudin a, bibendum eu dolor. Nullam posuere fermentum nunc, a egestas ipsum accumsan tincidunt.

                         Ut venenatis, mi at ultrices dictum, odio purus lacinia justo, et commodo massa nulla a orci. Integer ornare magna non sem fermentum nec gravida ligula accumsan. Integer ligula mauris, rutrum sed lobortis quis, facilisis vitae eros. Morbi sagittis fringilla lectus vestibulum fermentum. Integer turpis erat, eleifend vel pretium et, semper at magna. Nullam vulputate tortor nulla. Vestibulum quis augue nisi. Quisque congue purus eget justo condimentum vel volutpat metus egestas. Nullam laoreet lorem nec libero fermentum ac varius felis adipiscing. Mauris eu eros vel nibh tincidunt pellentesque. Aliquam pellentesque placerat orci, placerat placerat leo scelerisque non. Cras egestas tristique enim non placerat. Cras non purus at nunc mollis eleifend vel et nulla. Sed tincidunt, est faucibus blandit suscipit, felis odio lobortis erat, in ultricies nisi est eu justo. Etiam posuere massa sit amet est auctor a consectetur tortor volutpat.

                         Praesent eget augue ligula, et consequat urna. Quisque sed augue at velit vestibulum scelerisque commodo eu quam. Suspendisse ut erat ligula. Maecenas vestibulum risus ac massa posuere malesuada. Fusce nec risus sapien. Nullam gravida, mauris a gravida congue, sem ante vulputate elit, eget facilisis enim nulla eu dolor. Mauris ac tortor non dolor mattis ornare ac vitae libero. Phasellus ultricies mi vitae ligula vestibulum mollis. Sed rhoncus, eros sit amet dictum dignissim, arcu elit interdum sem, ac aliquam mi arcu ut justo. Donec et iaculis felis. Quisque porta porta nisi, vel dictum diam fringilla et. Pellentesque luctus dignissim ipsum, eget semper augue euismod quis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Cras tortor leo, gravida sollicitudin porttitor et, egestas id turpis. Quisque pulvinar volutpat convallis. Maecenas vulputate sem eu dolor cursus vehicula viverra nec mi. Cras sapien sapien, volutpat ut fermentum at, vehicula sed erat.

                         Ut tempor pretium diam quis gravida. Vivamus eu enim nibh, nec interdum est. Proin semper suscipit arcu vitae mollis. Integer vitae arcu mauris. Proin sodales posuere gravida. Pellentesque ut felis velit, ut malesuada libero. Mauris porttitor massa et risus lacinia semper. Quisque at justo magna, ac pretium mi. Donec non tortor id diam faucibus rutrum ut quis erat. Etiam consequat laoreet eleifend. Nulla elit ante, tempus sit amet bibendum et, cursus sit amet tellus. Nulla ultricies lorem nec mauris suscipit pharetra. Cras a quam id massa lobortis malesuada. Vivamus at lacinia arcu. Fusce pellentesque ante eu arcu tempor id tristique nisl gravida. Morbi fermentum, leo sit amet vehicula egestas, urna sem dapibus nisl, eget aliquet eros arcu a neque. Nunc sodales eleifend nunc non fringilla. Vestibulum fermentum faucibus egestas. Vestibulum consequat odio et neque luctus mollis.

                         Phasellus sed velit odio, et feugiat dolor. Nullam quis condimentum tellus. Phasellus a eros nibh. Vestibulum erat urna, volutpat sit amet condimentum et, euismod tincidunt leo. Vestibulum sodales aliquam purus quis tincidunt. Nulla ac leo risus, eu cursus magna. Vestibulum suscipit varius turpis, sit amet congue arcu ullamcorper vitae. Sed venenatis dignissim varius. Suspendisse hendrerit vehicula nibh venenatis ullamcorper. Aenean blandit feugiat tellus, in ultrices libero porttitor nec. In condimentum tempor dui non vehicula. Integer et elementum tellus. Proin adipiscing tempus urna in euismod.'
                        },
                        {:title => 'The Invisible Man',
                         :author_id => 2,
                         :body => 'Zepto duonhoro kio ul, bo zorgi reciprokeco lia. Oble kvanta diskriminacio ko mis, kie triangulo punktokomo postesigno ke, cento poste dua e. Frota apostrofo malantaŭa tro fo, ve eko minca deksesuma. Nenia iufoje nk vol.

                         Alies minimume daralbajdo vic os, devi makro respondeci tiu de. Ree ti povus maksimume, nur finno esceptinte oj. Io dev estro konjunkcio, ja preterito senobjekta log. Ore faka devi ok. End jaro pentekosto em.

                         Sin dekono eksploda re, speco krome frazenkondukilo sep ar, fundamenta kazablanko malprofitanto hu sur. Da sor orda ilion septiliono. Tie dekoj frato ac, pebi nedifina finaĵvorto en pre. Nei ba land stif elrigardi, sia kian fundamento tempopunkto uk, avo fari gramatika il. Vir ho afro kunigi, ies pere amen tien ot, tempismo fratineto kvintiliono sed om.'
                        },
                        {:title => 'The Biggest Mistake Ever',
                         :author_id  => 3,
                         :body => 'The biggest mistake ever was writing this article'     
                        }
                        
                      ]
author_attributes = [
                      {:name => 'Pablo Picasso'},
                      {:name => 'Johnathon Skinner'},
                      {:name => 'Pupu McGruber'},
                      {:name => 'Ben the Beggar'}
                    ]
                      
article_attributes.each do |attributes|
  Article.create!(attributes)
end

author_attributes.each do |attributes|
  Author.create!(attributes)
end
                        