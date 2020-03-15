User.create!( email: "armandoomtzz@gmail.com",
              password: "armando")

User.create!( email: "armandog@icalialabs.com",
              password: "armando")

Project.create!(name: "Proyecto #1",
                description: "Descripcion del Proyecto #1",
                status: 1)

Project.create!(name: "Proyecto #2",
                description: "Descripcion del Proyecto #2",
                status: 2)

UserRelationship.create!( user_id: 1,
                          project_id: 2)

UserRelationship.create!( user_id: 2,
                          project_id: 1)
