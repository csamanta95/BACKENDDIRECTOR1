# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Director.destroy_all
Actor.destroy_all
Comment.destroy_all

d1= Director.create(username: "samanta", password: "1234")
d2= Director.create(username: "saiyara", password: "12345")



a1= Actor.create(director_id: d1.id, name: "Leonardo Dicaprio", image: "https://cdn.britannica.com/05/156805-050-4B632781/Leonardo-DiCaprio-2010.jpg", age: 45 , experience: "Leonardo Wilhelm DiCaprio is an American actor, producer, and environmentalist. He has often played unconventional parts, particularly in biopics and period films. ")
a2= Actor.create(director_id: d2.id, name: "Johnny Depp", image: "https://cdn.onebauer.media/one/lifestyle-images/people/569e46e3375e84fc0cc1b8b9/Screen%20Shot%202015-06-03%20at%2020_620x713.png?quality=50&width=1000&ratio=1-1&resizeStyle=aspectfit&format=jpg", age: 56 , experience: "John Christopher Depp II is an American actor, producer, and musician. He has been nominated for 10 Golden Globe Awards, winning one for Best Actor for his performance of the title role in Sweeney Todd.")
a3= Actor.create(director_id: d1.id, name: "Will Smith", image: "https://static.toiimg.com/photo/msid-71437436/71437436.jpg?109788", age: 51 , experience: "Willard Carroll Smith Jr. is an American actor and rapper. In April 2007, Newsweek called him the most powerful actor in Hollywood. Smith has been nominated for five Golden Globe Awards and two Academy Awards, and has won four Grammy Awards. ")
a4= Actor.create(director_id: d2.id, name: "Hilary Duff", image: "https://www.biography.com/.image/t_share/MTE5NDg0MDU1MjcwNDkxNjYz/hilary-duff-17191546-1-402.jpg", age: 32 , experience: "Hilary Erhard Duff is an American actress, businesswoman, singer, songwriter, producer, and writer. Duff began her acting career at a young age and quickly became labeled a teen idol. ")
a5= Actor.create(director_id: d1.id, name: "Lindsay Lohan", image: "https://filmzone.com/wp-content/uploads/2018/06/Lindsay-Lohan-Net-Worth.jpg", age: 33 , experience: "Lindsay Dee Lohan is an American actress, singer-songwriter, businesswoman and producer. Born and raised in New York, Lohan was signed to Ford Models as a child. Having appeared as a regular on the television soap opera Another World at age 10, her breakthrough came in the Walt Disney Pictures film The Parent Trap.")
a6= Actor.create(director_id: d2.id, name: "Brad Pitt", image: "https://www.biography.com/.image/t_share/MTY3MDUxMjkzMjI1OTIwMTcz/brad-pitt-attends-the-premiere-of-20th-century-foxs--square.jpg", age: 56 , experience: "William Bradley Pitt is an American actor and film producer. He has received multiple awards, including two Golden Globe Awards and an Academy Award for his acting, in addition to another Academy Award and a Primetime Emmy Award as producer under his production company, Plan B Entertainment. ")
a7= Actor.create(director_id: d1.id, name: "Angelina Jolie", image: "https://www.myagecalculator.com/images/angelina-jolie.jpg", age: 44, experience: "Angelina Jolie is an American actress, filmmaker, and humanitarian. The recipient of such accolades as an Academy Award and three Golden Globe Awards, she has been named Hollywood's highest-paid actress multiple times")
a8= Actor.create(director_id: d2.id, name: "Jennifer Aniston", image: "https://media.glamour.com/photos/5dbc9a9dad26730009dc8ab4/master/pass/GettyImages-1184094287.jpg", age: 51, experience: "Jennifer Joanna Aniston is an American actress, film producer, and businesswoman. The daughter of actors John Aniston and Nancy Dow, she began working as an actress at an early age with an uncredited role in the 1987 film Mac and Me. Her first major film role came in the 1993 horror comedy Leprechaun.")
a9= Actor.create(director_id: d1.id, name: "Reese witherspoon", image: "https://cdnph.upi.com/svc/sv/upi/7311506615825/2017/1/86ce9bde238c695314b7f0d37694943e/Reese-Witherspoon-doesnt-regret-marrying-Ryan-Phillippe-at-age-23.jpg", age: 44 , experience: "Laura Jeanne Reese Witherspoon is an American actress, producer, and entrepreneur. The recipient of several accolades, including an Academy Award and a Primetime Emmy Award, she is among the highest-paid actresses in the world, as of 2019. ")
a10= Actor.create(director_id: d2.id, name: "Nicole Kidman", image: "https://gossipgist.com/uploads/363/nicole-kidman.png", age: 52 , experience: "Nicole Mary Kidman AC is an Australian actress and producer. She has won many awards including an Academy Award, two Primetime Emmy Awards, and five Golden Globe Awards. She was listed among the highest-paid actresses in the world in 2006, 2018, and 2019. ")
a11= Actor.create(director_id: d1.id, name: "Charlize Theron", image: "https://www.hellomagazine.com/imagenes/profiles/charlize-theron/6285-charlize-theron.jpg", age: 44 , experience: "Charlize Theron is a South African and American actress and producer. She is the recipient of several accolades, including an Academy Award, a Golden Globe Award, an American Cinematheque Award, and the Silver Bear for Best Actress. ")
a12= Actor.create(director_id: d2.id, name: "Seth Rogen", image: "https://cdn.britannica.com/18/205618-050-7CC082C1/Seth-Rogen-2019.jpg", age: 37 , experience: "Seth Aaron Rogen is a Canadian-American actor, comedian, writer, producer, and director. He began his career performing stand-up comedy during his teenage years. While still living in his hometown Vancouver, he landed a supporting role in Judd Apatow's series Freaks and Geeks.")
a13= Actor.create(director_id: d1.id, name: "Jonah Hill", image: "https://upload.wikimedia.org/wikipedia/commons/e/e1/Jonah_Hill-4939_%28cropped%29.jpg", age: 36, experience: "Jonah Hill Feldstein is an American actor, director, producer, screenwriter, and comedian. Hill is known for his comedic roles in films including Superbad, Knocked Up, Forgetting Sarah Marshall.")
a14= Actor.create(director_id: d2.id, name: "Shah Rukh Khan", image: "https://wikibio.in/wp-content/uploads/2018/04/xx-1512970816.jpg", age: 54, experience: "Shah Rukh Khan, also known by the initialism SRK, is an Indian actor, film producer, and television personality. Referred to in the media as the Badshah of Bollywood, King of Bollywood and King Khan, he has appeared in more than 80 Bollywood films, and earned numerous accolades, including 14 Filmfare Awards.")

c1= Comment.create(actor_id: a1.id, comment: "Hire for 2020 movie")
c2= Comment.create(actor_id: a2.id, comment: "Call this week and book appointment")
c3= Comment.create(actor_id: a3.id, comment: "Meeting this Friday")
c4= Comment.create(actor_id: a1.id, comment: "Phone appointment this Thursday")
c5= Comment.create(actor_id: a4.id, comment: "Hire for 2021")
c6= Comment.create(actor_id: a5.id, comment: "Interview this Wednesday")
c7= Comment.create(actor_id: a6.id, comment: "Hire for 2025 series")
c8= Comment.create(actor_id: a7.id, comment: "Family gathering")
c9= Comment.create(actor_id: a8.id, comment: "Call to discuss script")
c10=Comment.create(actor_id: a9.id, comment: "Hire for 2026 movie")
c11= Comment.create(actor_id: a10.id, comment: "Discuss issues with costars")
c12= Comment.create(actor_id: a11.id, comment: "Discuss costars")
c13= Comment.create(actor_id: a12.id, comment: "Discuss scripts and outfits")
c14= Comment.create(actor_id: a13.id, comment: "Hire for 2024 movie")
