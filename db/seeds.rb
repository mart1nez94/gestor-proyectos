TaskStatus.create!( id: 1,
                    name: "To-Do")
          
TaskStatus.create!( id: 2,
                    name: "Doing")
          
TaskStatus.create!( id: 3,
                    name: "Done")

ProjectStatus.create!(id: 1,
                      name: "Stand-by")
            
ProjectStatus.create!(id: 2,
                      name: "Developing")
            
ProjectStatus.create!(id: 3,
                      name: "Finished")
                    
User.create!( email: "armandoomtzz@gmail.com",
              password: "armando")

User.create!( email: "armandog@icalialabs.com",
              password: "armando")

Project.create!(name: "Proyecto #1",
                description: "Descripcion del Proyecto #1",
                project_status_id: 1)

Project.create!(name: "Proyecto #2",
                description: "Descripcion del Proyecto #2",
                project_status_id: 1)

Project.create!(name: "Proyecto #3",
                description: "Descripcion del Proyecto #3",
                project_status_id: 2)
            
Project.create!(name: "Proyecto #4",
                description: "Descripcion del Proyecto #4",
                project_status_id: 2)
                
ProjectRelationship.create!(user_id: 2,
                            project_id: 1)

ProjectRelationship.create!(user_id: 1,
                            project_id: 2)

ProjectRelationship.create!(user_id: 2,
                            project_id: 3)
                          
ProjectRelationship.create!(user_id: 1,
                            project_id: 4)
