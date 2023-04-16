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

doctors = Doctor.create([
    {name:"Alessandro Geddes",specialty:"Opthamology"},
    {name:"Lory Jephson",specialty:"Urology"},
    {name:"Babs Gooderham",specialty:"General"},
    {name:"Maxwell Tierny",specialty:"Surgery"},
    {name:"Kelley Tallach",specialty:"Training"}
])

appointments = Appointment.create([
    {pet_id:1,doctor_id:1,start_time:"2022-08-29 20:35:38",end_time:"2022-11-01 01:50:20",post_summary:"eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus",notes:"cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue"},
    {pet_id:2,doctor_id:2,start_time:"2023-02-03 13:50:44",end_time:"2022-05-11 09:07:09",post_summary:"donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien",notes:"curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac"},
    {pet_id:3,doctor_id:3,start_time:"2023-04-01 14:30:16",end_time:"2023-02-27 03:46:57",post_summary:"eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus",notes:"pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero"},
    {pet_id:4,doctor_id:4,start_time:"2022-07-20 11:28:13",end_time:"2022-12-14 18:23:54",post_summary:"facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel",notes:"in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia"},
    {pet_id:5,doctor_id:5,start_time:"2022-10-07 03:23:35",end_time:"2023-02-16 21:27:51",post_summary:"nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem",notes:"nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla"},
    {pet_id:6,doctor_id:1,start_time:"2022-04-19 14:47:46",end_time:"2022-06-26 12:06:26",post_summary:"adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien",notes:"odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac"},
    {pet_id:7,doctor_id:2,start_time:"2023-04-07 11:44:37",end_time:"2022-09-15 08:28:32",post_summary:"aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac",notes:"elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum"},
    {pet_id:8,doctor_id:3,start_time:"2022-10-31 15:38:13",end_time:"2022-10-20 13:08:19",post_summary:"nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi",notes:"parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum"},
    {pet_id:9,doctor_id:4,start_time:"2022-05-28 02:52:33",end_time:"2022-07-21 16:43:29",post_summary:"ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis",notes:"donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque"},
    {pet_id:10,doctor_id:5,start_time:"2022-11-30 03:12:24",end_time:"2022-07-06 10:58:32",post_summary:"sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis",notes:"viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis"},
    {pet_id:11,doctor_id:1,start_time:"2022-05-03 03:32:34",end_time:"2022-07-09 12:42:32",post_summary:"erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus",notes:"in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas"},
    {pet_id:12,doctor_id:2,start_time:"2022-06-02 13:06:27",end_time:"2022-06-10 11:45:48",post_summary:"mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum",notes:"nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non"},
    {pet_id:13,doctor_id:3,start_time:"2022-07-11 09:47:20",end_time:"2022-08-13 01:24:29",post_summary:"montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis",notes:"nunc rhoncus dui vel sem sed sagittis nam congue risus semper"},
    {pet_id:14,doctor_id:4,start_time:"2022-11-12 00:32:20",end_time:"2023-03-25 04:12:21",post_summary:"consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at",notes:"nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit"},
    {pet_id:15,doctor_id:5,start_time:"2023-02-28 17:50:32",end_time:"2022-11-29 05:44:59",post_summary:"nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem",notes:"est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce"},
    {pet_id:16,doctor_id:1,start_time:"2022-05-31 19:01:25",end_time:"2022-08-28 15:00:13",post_summary:"morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla",notes:"pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat"},
    {pet_id:17,doctor_id:2,start_time:"2022-11-03 12:50:57",end_time:"2022-08-03 03:06:27",post_summary:"ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia",notes:"nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer"},
    {pet_id:18,doctor_id:3,start_time:"2023-01-28 19:59:40",end_time:"2022-10-10 09:11:01",post_summary:"elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus",notes:"tempor convallis nulla neque libero convallis eget eleifend luctus ultricies"},
    {pet_id:19,doctor_id:4,start_time:"2022-05-10 09:25:51",end_time:"2022-06-20 07:43:46",post_summary:"nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id",notes:"massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in"},
    {pet_id:20,doctor_id:5,start_time:"2023-01-28 01:39:42",end_time:"2023-01-18 12:34:37",post_summary:"enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien",notes:"amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in"}
])

bills = Bill.create([
    {appointment_id:1,time_generated:"2023-03-31 17:20:09",amount:"$1.81",due_date:"28/4/2022",status:"paid"},
    {appointment_id:2,time_generated:"2022-06-03 12:50:11",amount:"$6.60",due_date:"7/3/2023",status:"paid"},
    {appointment_id:3,time_generated:"2022-11-28 14:54:34",amount:"$2.65",due_date:"9/4/2023",status:"paid"},
    {appointment_id:4,time_generated:"2022-06-25 09:04:11",amount:"$1.58",due_date:"8/6/2022",status:"paid"},
    {appointment_id:5,time_generated:"2022-06-29 04:02:06",amount:"$9.35",due_date:"12/2/2023",status:"paid"},
    {appointment_id:6,time_generated:"2022-06-05 07:32:15",amount:"$4.32",due_date:"17/4/2022",status:"paid"},
    {appointment_id:7,time_generated:"2022-06-25 12:47:40",amount:"$6.35",due_date:"7/8/2022",status:"paid"},
    {appointment_id:8,time_generated:"2022-04-23 09:32:30",amount:"$3.48",due_date:"20/1/2023",status:"paid"},
    {appointment_id:9,time_generated:"2022-10-13 17:57:42",amount:"$1.30",due_date:"3/4/2023",status:"paid"},
    {appointment_id:10,time_generated:"2022-06-06 20:07:29",amount:"$2.59",due_date:"23/2/2023",status:"unpaid"},
    {appointment_id:11,time_generated:"2022-07-11 18:42:07",amount:"$3.24",due_date:"11/5/2022",status:"unpaid"},
    {appointment_id:12,time_generated:"2022-09-30 08:38:15",amount:"$8.01",due_date:"30/12/2022",status:"unpaid"},
    {appointment_id:13,time_generated:"2022-08-04 17:14:41",amount:"$0.75",due_date:"3/11/2022",status:"unpaid"},
    {appointment_id:14,time_generated:"2022-12-30 16:20:20",amount:"$3.45",due_date:"6/1/2023",status:"unpaid"},
    {appointment_id:15,time_generated:"2023-01-24 18:00:53",amount:"$0.21",due_date:"11/8/2022",status:"unpaid"},
    {appointment_id:16,time_generated:"2022-11-05 16:22:29",amount:"$6.07",due_date:"20/4/2022",status:"unpaid"},
    {appointment_id:17,time_generated:"2022-11-22 06:06:21",amount:"$7.94",due_date:"2/8/2022",status:"unpaid"},
    {appointment_id:18,time_generated:"2022-04-16 18:32:21",amount:"$6.60",due_date:"11/7/2022",status:"unpaid"},
    {appointment_id:19,time_generated:"2022-07-18 15:33:18",amount:"$2.66",due_date:"30/9/2022",status:"unpaid"},
    {appointment_id:20,time_generated:"2022-12-29 19:37:30",amount:"$9.19",due_date:"20/7/2022",status:"unpaid"}
])

prescriptions = Prescription.create([
    {appointments: [Appointment.find(2)], doctor_id:1,name:"WITCH HAZEL",dosage:95,instructions:"Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.",prescribed_date:"2022-08-17 00:18:10",refill_date:"23/7/2022"},
    {appointments: [Appointment.find(3)], doctor_id:2,name:"PETROLATUM",dosage:18,instructions:"Fusce consequat. Nulla nisl. Nunc nisl.",prescribed_date:"2022-08-10 13:00:42",refill_date:"20/5/2022"},
    {appointments: [Appointment.find(4)], doctor_id:3,name:"Perphenazine",dosage:17,instructions:"Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.",prescribed_date:"2022-12-14 15:48:28",refill_date:"1/4/2023"},
    {appointments: [Appointment.find(5)], doctor_id:4,name:"Avobenzone, Homosalate, Octisalate, Octocrylene and Oxybenzone",dosage:40,instructions:"Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.",prescribed_date:"2023-02-19 07:56:44",refill_date:"13/12/2022"},
    {appointments: [Appointment.find(6)], doctor_id:5,name:"Loratadine, Pseudoephedrine",dosage:92,instructions:"Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.",prescribed_date:"2022-11-24 11:43:28",refill_date:"15/11/2022"},
    {appointments: [Appointment.find(7)], doctor_id:1,name:"Naproxen sodium",dosage:56,instructions:"Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.",prescribed_date:"2022-09-22 00:34:31",refill_date:"30/9/2022"},
    {appointments: [Appointment.find(8)], doctor_id:2,name:"Ibuprofen",dosage:23,instructions:"Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.",prescribed_date:"2022-12-20 16:54:47",refill_date:"16/2/2023"},
    {appointments: [Appointment.find(9)], doctor_id:3,name:"GLYCERIN",dosage:58,instructions:"Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.",prescribed_date:"2022-10-24 20:52:37",refill_date:"6/11/2022"},
    {appointments: [Appointment.find(10)], doctor_id:4,name:"Glycerin",dosage:69,instructions:"In congue. Etiam justo. Etiam pretium iaculis justo.",prescribed_date:"2022-06-01 19:14:00",refill_date:"10/7/2022"},
    {appointments: [Appointment.find(12)], doctor_id:5,name:"CALENDULA OFFICINALIS FLOWERING TOP, GERANIUM MACULATUM ROOT, SODIUM CHLORIDE, THUJA OCCIDENTALIS LEAFY TWIG, ZINC, and ECHINACEA ANGUSTIFOLIA",dosage:35,instructions:"Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.",prescribed_date:"2022-05-06 05:31:16",refill_date:"14/3/2023"},
    {appointments: [Appointment.find(13)], doctor_id:1,name:"Pyrithione Zinc",dosage:7,instructions:"In congue. Etiam justo. Etiam pretium iaculis justo.",prescribed_date:"2023-02-27 08:50:35",refill_date:"21/1/2023"},
    {appointments: [Appointment.find(14)], doctor_id:2,name:"GUAIFENESIN",dosage:85,instructions:"Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.",prescribed_date:"2023-01-31 00:09:30",refill_date:"3/12/2022"},
    {appointments: [Appointment.find(15)], doctor_id:3,name:"nicotine polacrilex",dosage:53,instructions:"Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.",prescribed_date:"2022-09-21 22:19:55",refill_date:"11/8/2022"},
    {appointments: [Appointment.find(16)], doctor_id:4,name:"Echinacea (Angustifolia), Adrenalinum, Glandula suprarenalis bovine, Spleen (suis), Carduus marianus, Lycopodium clavatum,",dosage:98,instructions:"Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.",prescribed_date:"2023-03-26 04:12:21",refill_date:"29/7/2022"},
    {appointments: [Appointment.find(17)], doctor_id:5,name:"articaine hydrochloride and epinephrine bitartrate",dosage:51,instructions:"Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.",prescribed_date:"2022-11-16 22:54:48",refill_date:"8/12/2022"}
])

services = Service.create([
    {name:"checkup",notes:"Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus."},
    {name:"eye surgery",notes:"Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."},
    {name:"stomach surgery",notes:"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus."},
    {name:"grooming",notes:"In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus."},
    {name:"clean teeth",notes:"Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus."}
])

appointment_services = AppointmentService.create([
    {appointment_id:1,service_id:1,start_time:"2022-05-17 07:45:03",end_time:"2022-07-21 09:20:14",notes:"Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque."},
    {appointment_id:2,service_id:2,start_time:"2022-11-16 19:51:15",end_time:"2022-08-04 03:22:29",notes:"Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero."},
    {appointment_id:3,service_id:3,start_time:"2022-06-17 06:21:11",end_time:"2023-03-18 02:34:23",notes:"Phasellus in felis. Donec semper sapien a libero. Nam dui."},
    {appointment_id:4,service_id:4,start_time:"2022-08-13 04:02:19",end_time:"2022-05-18 16:15:05",notes:"Phasellus in felis. Donec semper sapien a libero. Nam dui."},
    {appointment_id:5,service_id:5,start_time:"2022-08-22 04:46:24",end_time:"2022-09-30 17:14:43",notes:"Sed ante. Vivamus tortor. Duis mattis egestas metus."},
    {appointment_id:6,service_id:1,start_time:"2022-05-09 07:29:57",end_time:"2023-02-16 06:39:51",notes:"Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus."},
    {appointment_id:7,service_id:2,start_time:"2022-06-06 19:04:33",end_time:"2023-03-26 08:14:39",notes:"Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum."},
    {appointment_id:8,service_id:3,start_time:"2022-08-10 02:40:44",end_time:"2023-02-18 08:26:58",notes:"Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti."},
    {appointment_id:9,service_id:4,start_time:"2022-04-17 19:36:11",end_time:"2023-03-02 18:32:31",notes:"Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem."},
    {appointment_id:10,service_id:5,start_time:"2022-08-27 05:38:25",end_time:"2022-05-13 22:02:33",notes:"Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus."},
    {appointment_id:11,service_id:1,start_time:"2022-05-14 09:32:34",end_time:"2022-11-05 19:02:01",notes:"Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus."},
    {appointment_id:12,service_id:2,start_time:"2022-11-07 18:42:11",end_time:"2022-06-17 10:34:30",notes:"Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst."},
    {appointment_id:13,service_id:3,start_time:"2022-12-27 14:36:27",end_time:"2022-05-27 17:12:08",notes:"In congue. Etiam justo. Etiam pretium iaculis justo."},
    {appointment_id:14,service_id:4,start_time:"2022-06-30 03:50:30",end_time:"2022-05-19 05:20:10",notes:"In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo."},
    {appointment_id:15,service_id:5,start_time:"2022-04-28 03:58:02",end_time:"2023-01-22 22:56:39",notes:"Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem."},
    {appointment_id:16,service_id:1,start_time:"2022-06-28 09:17:36",end_time:"2023-02-01 09:23:38",notes:"Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus."},
    {appointment_id:17,service_id:2,start_time:"2022-09-14 13:48:10",end_time:"2022-06-05 12:40:36",notes:"Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem."},
    {appointment_id:18,service_id:3,start_time:"2022-06-29 19:26:41",end_time:"2022-11-22 07:53:30",notes:"Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat."},
    {appointment_id:19,service_id:4,start_time:"2022-10-06 18:47:54",end_time:"2022-11-06 19:05:35",notes:"Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi."},
    {appointment_id:11,service_id:4,start_time:"2022-10-06 18:47:54",end_time:"2022-11-06 19:05:35",notes:"Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi."}
])