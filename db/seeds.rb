# Tasks status
TaskStatus.create!( id: 1,
                    name: "To-Do")
          
TaskStatus.create!( id: 2,
                    name: "Doing")
          
TaskStatus.create!( id: 3,
                    name: "Done")

# Project status
ProjectStatus.create!(id: 1,
                      name: "Stand-by")
            
ProjectStatus.create!(id: 2,
                      name: "Developing")
            
ProjectStatus.create!(id: 3,
                      name: "Finished")
                
# Users for examples
User.create!( email: "armandoomtzz@gmail.com",
              password: "armando")

User.create!( email: "armandog@icalialabs.com",
              password: "armando")
