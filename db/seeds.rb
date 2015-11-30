# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Partner.create(name: "YMCA", address: "555 Elm Street", zip_code: 19148, website: "ymca.net", email: "YMCA@email.com", phone: 555555555)

Partner.create(name: "Boys and Girls Club", address: "555 Maple Street", zip_code: 19148, website: "bgclub.org", email: "bgclub@email.com", phone: 555555555)

Partner.create(name: "Children's Literacy Initiative", address: "555 Pine Street", zip_code: 19148, website: "cli.org", email: "cli@email.com", phone: 555555555)


Partner.create(name: "AARP Experience Corps", address: "555 Oak Street", zip_code: 19148, website: "aarp.org", email: "aarp@email.com", phone: 555555555)


Partner.create(name: "Philadelphia School Partnership", address: "555 Holly Street", zip_code: 19145, website: "psp.org", email: "psp@email.com", phone: 555555555)


Partner.create(name: "The Notebook", address: "555 Spruce Street", zip_code: 19145, website: "thenotebook.org", email: "thenotebook@email.com", phone: 555555555)

Participant.create(partner_id: 1, first_name: "Mike", last_name: "Johnson", absence: nil, email: "mike@email.com", date_of_birth: "2015-09-27", home_address: "", school: "", parent_name: "", student: true)

Participant.create(partner_id: 1, first_name: "Jamel", last_name: "Andersen", absence: nil, email: "jamel@email.com", date_of_birth: "2015-09-27", home_address: "", school: "", parent_name: "", student: true)

Participant.create(partner_id: 1, first_name: "Kaitlin", last_name: "Martinez", absence: nil, email: "", date_of_birth: "2015-09-27", home_address: "", school: "", parent_name: "", student: true)
    
Participant.create(partner_id: 1, first_name: "Shawnda", last_name: "Brown", absence: nil, email: "shawnda@email.com", date_of_birth: "2015-09-27", home_address: "", school: "", parent_name: "", student: true)

Participant.create(partner_id: 1, first_name: "Montel", last_name: "Williamson", absence: nil, email: "montel@email.com", date_of_birth: "2015-09-27", home_address: "", school: "", parent_name: "", student: true)

Participant.create(partner_id: 1, first_name: "Cindy", last_name: "Williams", absence: nil, email: "", date_of_birth: "2015-09-27", home_address: "", school: "", parent_name: "", student: true)

Participant.create(partner_id: 2, first_name: "Jackson", last_name: "Summers", absence: nil, email: "", date_of_birth: "2015-09-27", home_address: "", school: "", parent_name: "", student: true)

Participant.create(partner_id: 2, first_name: "Janelle", last_name: "Hastert", absence: nil, email: "", date_of_birth: "2015-09-27", home_address: "", school: "", parent_name: "", student: true)

Participant.create(partner_id: 2, first_name: "Melanie", last_name: "Peters", absence: nil, email: "", date_of_birth: "2015-09-27", home_address: "", school: "", parent_name: "", student: true)

Participant.create(partner_id: 2, first_name: "Chaz", last_name: "Chapman", absence: nil, email: "", date_of_birth: "2015-09-27", home_address: "", school: "", parent_name: "", student: true)

Participant.create(partner_id: 2, first_name: "Sheena", last_name: "Easton", absence: nil, email: "", date_of_birth: "2015-09-27", home_address: "", school: "", parent_name: "", student: true)

Participant.create(partner_id: 3, first_name: "Jennifer", last_name: "Martin", absence: nil, email: "", date_of_birth: "2015-09-27", home_address: "", school: "", parent_name: "", student: true)

Participant.create(partner_id: 3, first_name: "Jorge", last_name: "Kinney", absence: nil, email: "", date_of_birth: "2015-09-27", home_address: "", school: "", parent_name: "", student: true)

Participant.create(partner_id: 3, first_name: "Madison", last_name: "Larson", absence: nil, email: "", date_of_birth: "2015-09-27", home_address: "", school: "", parent_name: "", student: true)

Participant.create(partner_id: 4, first_name: "Victor", last_name: "Huang", absence: nil, email: "", date_of_birth: "2015-09-27", home_address: "", school: "", parent_name: "", student: true)

Participant.create(partner_id: 4, first_name: "Vivien", last_name: "Lee", absence: nil, email: "", date_of_birth: "2015-09-27", home_address: "", school: "", parent_name: "", student: true)

Participant.create(partner_id: 4, first_name: "Charlie", last_name: "Matthews", absence: nil, email: "", date_of_birth: "2015-09-27", home_address: "", school: "", parent_name: "", student: true)

Participant.create(partner_id: 4, first_name: "Lola", last_name: "Chandler", absence: nil, email: "", date_of_birth: "2015-09-27", home_address: "", school: "", parent_name: "", student: true)

Participant.create(partner_id: 4, first_name: "Arizona", last_name: "Bell", absence: nil, email: "", date_of_birth: "2015-09-27", home_address: "", school: "", parent_name: "", student: true)

Participant.create(partner_id: 5, first_name: "John", last_name: "Masterson", absence: nil, email: "", date_of_birth: "2015-09-27", home_address: "", school: "", parent_name: "", student: true)

Participant.create(partner_id: 5, first_name: "Molly", last_name: "Choi", absence: nil, email: "", date_of_birth: "2015-09-27", home_address: "", school: "", parent_name: "", student: true)

Participant.create(partner_id: 5, first_name: "Hazel", last_name: "Francis", absence: nil, email: "", date_of_birth: "2015-09-27", home_address: "", school: "", parent_name: "", student: true)

Participant.create(partner_id: 5, first_name: "Emily", last_name: "Grimble", absence: nil, email: "", date_of_birth: "2015-09-27", home_address: "", school: "", parent_name: "", student: true)

Participant.create(partner_id: 5, first_name: "Chaz", last_name: "Goldstein", absence: nil, email: "", date_of_birth: "2015-09-27", home_address: "", school: "", parent_name: "", student: true)

Participant.create(partner_id: 5, first_name: "Hanna", last_name: "Finkle", absence: nil, email: "", date_of_birth: "2015-09-27", home_address: "", school: "", parent_name: "", student: true)

Participant.create(partner_id: 6, first_name: "Kelly", last_name: "Jamis", absence: nil, email: "", date_of_birth: "2015-09-27", home_address: "", school: "", parent_name: "", student: true)

Participant.create(partner_id: 6, first_name: "Florence", last_name: "Delphi", absence: nil, email: "", date_of_birth: "2015-09-27", home_address: "", school: "", parent_name: "", student: true)

Participant.create(partner_id: 6, first_name: "Jeff", last_name: "Blinder", absence: nil, email: "", date_of_birth: "2015-09-27", home_address: "", school: "", parent_name: "", student: true)

Participant.create(partner_id: 6, first_name: "Sally", last_name: "Obermeier", absence: nil, email: "", date_of_birth: "2015-09-27", home_address: "", school: "", parent_name: "", student: true)

Participant.create(partner_id: 6, first_name: "Dillon", last_name: "Casey", absence: nil, email: "", date_of_birth: "2015-09-27", home_address: "", school: "", parent_name: "", student: true)

