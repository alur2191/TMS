
Loadboard.destroy_all



Driver.destroy_all
 
Driver.create!([{
  name: "John Doe",
  driver_type: "Team Driver",
  phone: "407-300-0000",
  email: "teamdriver@company.com",
  address: "123 Main St, City St. 10020"
},

{
  name: "Sam Bachman",
  driver_type: "Single Driver",
  phone: "407-400-0003",
  email: "driver@company.com",
  address: "321 Main St, City St. 10020"
}])
 
p "Created #{Driver.count} drivers"