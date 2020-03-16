User.create!( email: "armandoomtzz@gmail.com",
              password: "armando")

User.create!( email: "armandog@icalialabs.com",
              password: "armando")

Project.create!(name: "Proyecto #1",
                description: "Descripcion del Proyecto #1",
                status: 1)

Project.create!(name: "Proyecto #2",
                description: "Descripcion del Proyecto #2",
                status: 1)

Project.create!(name: "Proyecto #3",
                description: "Descripcion del Proyecto #3",
                status: 2)
            
Project.create!(name: "Proyecto #4",
                description: "Descripcion del Proyecto #4",
                status: 2)
                
ProjectRelationship.create!(user_id: 2,
                            project_id: 1)

ProjectRelationship.create!(user_id: 1,
                            project_id: 2)

ProjectRelationship.create!(user_id: 2,
                            project_id: 3)
                          
ProjectRelationship.create!(user_id: 1,
                            project_id: 4)


50.times do |time|
  Task.create!( project_id: 1, 
                name: "Tarea ##{time}", 
                description: "Descripcion de la Tarea ##{time}",
                status_id: 1)
end

5.times do |time|
  Task.create!( project_id: 4, 
                name: "Tarea ##{time}", 
                description: "Descripcion de la Tarea ##{time}",
                status_id: 1)
end

10.times do |time|
  Task.create!( project_id: 4, 
                name: "Tarea ##{time}", 
                description: "Descripcion de la Tarea ##{time}",
                status_id: 2)
end

20.times do |time|
  Task.create!( project_id: 4, 
                name: "Tarea ##{time}", 
                description: "Descripcion de la Tarea ##{time}",
                status_id: 3)
end
