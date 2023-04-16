# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{name "Star Wars" }, {name "Lord of the Rings" }])
#   Character.createname "Luke", movie: movies.first)

customers = Customer.create([
    {name: "Prentice Gobell",address:"84992 Sundown Pass",email:"pgobell0@infoseek.co.jp",phone:"498-604-1044",registration_date: "22/11/2021",status:"current",notification_type:"email"},
    {name: "Bliss Freckleton",address:"4793 Moulton Court",email:"bfreckleton1@europa.eu",phone:"588-862-7581",registration_date: "17/10/2021", status:"current",notification_type:"sms"},
    {name: "Cassaundra Vallack",address:"030 Westridge Terrace",email:"cvallack2@icio.us",phone:"201-286-3354",registration_date: "27/11/2021",status:"current",notification_type:"email"},
    {name: "Thom Whaites",address:"930 Trailsway Street",email:"twhaites3@dagondesign.com",phone:"351-636-6264",registration_date: "07/02/2021",status:"current",notification_type:"sms"},
    {name: "Gaylene Rosentholer",address:"465 Dovetail Plaza",email:"grosentholer4@lycos.com",phone:"548-253-7364",registration_date: "20/05/2021",status:"current",notification_type:"email"},
    {name: "Codi Feye",address:"52817 Towne Center",email:"cfeye5@rambler.ru",phone:"301-243-6186",registration_date: "25/04/2022",status:"current",notification_type:"sms"},
    {name: "Redd Crop",address:"15417 Corben Crossing",email:"rcrop6@oracle.com",phone:"569-378-4434",registration_date: "25/06/2020",status:"past",notification_type:"sms"},
    {name: "Smith Sagar",address:"031 Rigney Plaza",email:"ssagar7@deviantart.com",phone:"994-229-9995",registration_date: "02/02/2020",status:"past",notification_type:"email"},
    {name: "Xena Neising",address:"4 Sutteridge Hill",email:"xneising8@archive.org",phone:"491-564-6404",registration_date: "31/07/2021",status:"past",notification_type:"email"},
    {name: "Alleen Mattecot",address:"777 Victoria Alley",email:"amattecot9@hatena.ne.jp",phone:"763-445-7803",registration_date: "11/02/2021",status:"past",notification_type:"email"},
    {name: "Arleyne Brandts",address:"99 Westport Lane",email:"abrandtsa@cnbc.com",phone:"492-686-9837",registration_date: "26/12/2021",status:"past",notification_type:"email"},
    {name: "Jan Exon",address:"75939 Buell Street",email:"jexonb@live.com",phone:"442-846-1156",registration_date: "25/09/2022",status:"past",notification_type:"sms"},
    {name: "Corene Doerren",address:"3 Thompson Terrace",email:"cdoerrenc@unesco.org",phone:"268-710-4854",registration_date: "13/10/2020",status:"current",notification_type:"email"},
    {name: "Ailsun Cawkill",address:"9742 Red Cloud Street",email:"acawkilld@cnbc.com",phone:"570-224-9861",registration_date: "13/10/2020",status:"current",notification_type:"sms"},
    {name: "Corrina McGibbon",address:"272 Del Mar Circle",email:"cmcgibbone@nba.com",phone:"987-973-1602",registration_date: "13/11/2021",status:"current",notification_type:"sms"},
    {name: "Yoshi Franz",address:"8404 Kim Alley",email:"yfranzf@livejournal.com",phone:"753-979-1483",registration_date: "29/09/2021", status:"current",notification_type:"email"},
    {name: "Kingsly Klas",address:"1 Chive Park",email:"kklasg@gnu.org",phone:"614-368-9751",registration_date: "29/12/2022",status:"current",notification_type:"Dakota"},
    {name: "Sylas Gilbertson",address:"266 Rowland Hill",email:"sgilbertsonh@abc.net.au",phone:"109-326-7518",registration_date: "13/04/2022", status:"current",notification_type:"sms"},
    {name: "Merle Redfern",address:"959 Debs Point",email:"mredferni@japanpost.jp",phone:"334-192-6345",registration_date: "10/11/2021",status:"current",notification_type:"email"},
    {name: "Creighton Treasure",address:"2578 Gulseth Park",email:"ctreasurej@abc.net.au",phone:"661-570-3234",registration_date: "15/05/2021", status:"current",notification_type:"email"}
])

species = Species.create([
    {name: "Canis familiaris"},
    {name: "Cynictis penicillata"},
    {name: "Acridotheres tristis"},
    {name: "Macropus robustus"},
    {name: "Hippotragus niger"},
    {name: "Prionace glauca"},
    {name: "Macropus rufogriseus"},
    {name: "Ammospermophilus nelsoni"},
    {name: "Choloepus hoffmani"},
    {name: "Plegadis falcinellus"}
])

breeds = Breed.create([
    {name: "German Shepherd"},
    {name: "Australian Shepherd"},
    {name: "Golden Retriever"},
    {name: "Pitbull"},
    {name: "Bulldog"},
    {name:  "Chihuaha"}
])

pets = Pet.create([
    {customers: [Customer.find(1)],name:"Melamie Lyptrade",species_id:1,breed_id:1,birth_date:"30/5/2022",gender:"Female"},
    {customers: [Customer.find(2)],name:"Quinta Staley",species_id:1,breed_id:2,birth_date:"17/11/2022",gender:"Female"},
    {customers: [Customer.find(3)],name:"Harriott Minster",species_id:1,breed_id:3,birth_date:"23/9/2022",gender:"Female"},
    {customers: [Customer.find(4)],name:"Gannon Pointon",species_id:1,breed_id:4,birth_date:"15/6/2022",gender:"Male"},
    {customers: [Customer.find(5)],name:"Jasun Curee",species_id:1,breed_id:5,birth_date:"5/12/2022",gender:"Male"},
    {customers: [Customer.find(6)],name:"Stanfield Meese",species_id:1,breed_id:6,birth_date:"23/4/2022",gender:"Male"},
    {customers: [Customer.find(7)],name:"Emmaline Fowlston",species_id:1,breed_id:1,birth_date:"29/12/2022",gender:"Female"},
    {customers: [Customer.find(8)],name:"Blinny Axcel",species_id:1,breed_id:2,birth_date:"4/8/2022",gender:"Female"},
    {customers: [Customer.find(9)],name:"Moreen Walklot",species_id:1,breed_id:1,birth_date:"15/9/2022",gender:"male"},
    {customers: [Customer.find(10)],name:"Shirleen Candwell",species_id:1,breed_id:1,birth_date:"23/9/2022",gender:"Female"},
    {customers: [Customer.find(11)],name:"Waylan Hawgood",species_id:1,breed_id:3,birth_date:"1/1/2023",gender:"Male"},
    {customers: [Customer.find(12)],name:"Justin Whitcomb",species_id:1,breed_id:4,birth_date:"30/7/2022",gender:"Female"},
    {customers: [Customer.find(13)],name:"Mariel Braams",species_id:1,breed_id:5,birth_date:"18/11/2022",gender:"Female"},
    {customers: [Customer.find(14)],name:"Averil Francecione",species_id:1,breed_id:6,birth_date:"3/10/2022",gender:"Female"},
    {customers: [Customer.find(15)],name:"Maridel Delgaty",species_id:1,breed_id:1,birth_date:"3/4/2023",gender:"Female"},
    {customers: [Customer.find(16)],name:"Price Cassley",species_id:1,breed_id:1,birth_date:"27/5/2022",gender:"Male"},
    {customers: [Customer.find(17)],name:"Curran Duckerin",species_id:2,breed_id:6,birth_date:"30/10/2022",gender:"Male"},
    {customers: [Customer.find(18)],name:"Tibold Folger",species_id:2,breed_id:6,birth_date:"23/7/2022",gender:"Male"},
    {customers: [Customer.find(19)],name:"Arnoldo Golsworthy",species_id:2,breed_id:6,birth_date:"8/5/2022",gender:"Male"},
    {customers: [Customer.find(20)],name:"Lanie Chapellow",species_id:2,breed_id:6,birth_date:"13/9/2022",gender:"Female"}
])