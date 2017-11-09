# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# pa1 = Payment.new(amount: 600.00, type:'Rent', rentmonth:'Jan',paymentdate:'2016-02-02',paymentstatus:true,comment:'Full rent for month of Jan paid.')
# pa2 = Payment.new(amount: 600.00, type:'Rent', rentmonth:'Feb',paymentdate:'2016-03-02',paymentstatus:true,comment:'Full rent for month of Feb paid.')
# pa3 = Payment.new(amount: 200.00, type:'Deposit', rentmonth:'Jan',paymentdate:'2016-02-02',paymentstatus:true,comment:'Deposit paid for year 2016.')
# pa4 = Payment.new(amount: 50.00, type:'Rent', rentmonth:'March',paymentdate:'2016-04-02',paymentstatus:true,comment:'Rent for the month of march paid.')
# pa5 = Payment.new(amount: 600.00, type:'Rent', rentmonth:'April',paymentdate:'2016-05-02',paymentstatus:true,comment:'Rent for month of April paid.')
# pa6 = Payment.new(amount: 600.00, type:'Rent', rentmonth:'May',paymentdate:'2016-06-02',paymentstatus:true,comment:'Rent for month of May paid.')
# pa7 = Payment.new(amount: 600.00, type:'Rent', rentmonth:'June',paymentdate:'2016-07-02',paymentstatus:true,comment:'Rent for month of April paid.')
# pa8 = Payment.new(amount: 600.00, type:'Rent', rentmonth:'July',paymentdate:'2016-08-02',paymentstatus:true,comment:'Rent for month of May paid.')


rent1 = Rent.new(amount: 600.00, duemonth:'Jan',paymentdate:'2016-02-02',paymentstatus:true,comment:'Full rent for month of Jan paid.')
rent2 = Rent.new(amount: 600.00, duemonth:'Feb',paymentdate:'2016-03-02',paymentstatus:true,comment:'Full rent for month of Feb paid.')
rent3 = Rent.new(amount: 50.00, duemonth:'March',paymentdate:'2016-04-02',paymentstatus:true,comment:'Rent for the month of march paid.')
rent4 = Rent.new(amount: 600.00, duemonth:'April',paymentdate:'2016-05-02',paymentstatus:true,comment:'Rent for month of April paid.')
rent5 = Rent.new(amount: 600.00, duemonth:'May',paymentdate:'2016-06-02',paymentstatus:true,comment:'Rent for month of May paid.')
rent6 = Rent.new(amount: 600.00, duemonth:'June',paymentdate:'2016-07-02',paymentstatus:true,comment:'Rent for month of April paid.')
rent7 = Rent.new(amount: 600.00, duemonth:'July',paymentdate:'2016-08-02',paymentstatus:true,comment:'Rent for month of May paid.')

diposit1 = Deposit.new(amount: 200.00, duemonth:'Jan', paymentdate:'2016-02-02',paymentstatus:true,comment:'Deposit paid for year 2016.')
appfee1 = ApplicationFee.new(amount: 200.00, duemonth:'Jan',paymentdate:'2016-02-02',paymentstatus:true,comment:'Application fee payed')



PropertyManager.create!(firstname: 'James', lastname: 'Bond', identification:'0025531', dob:'1985-10-15',sex:'Male',address:'1540 Hiland', 
	contact: '9019152300', email: 'jbond@hiland.com', description: 'A detective', password: 'james')

ag1 = Agent.create!(firstname: 'Hari', lastname: 'Brown', identification:'10232269', dob:'1972-05-22',sex:'Male',address:'250 Park ave', 
	contact: '9016252881', email: 'hbrown@hiland.com', description: 'A player', password: 'hari')


ag2 = Agent.create!(firstname: 'Binod', lastname: 'Wilson', identification:'10232260', dob:'1972-05-22',sex:'Male',address:'250 Park ave', 
	contact: '9016252781', email: 'bwilson@hiland.com', description: 'A player', password: 'binod')


ta1 = Tenant.new(firstname: 'Rahul', lastname: 'Advani', identification:'89732502', dob:'1965-06-25',sex:'Male',address:'250 Park ave', 
	contact: '9016253589', email: 'radvani@hiland.com', description: 'An entertainer', password: 'rahul')

ta2 = Tenant.new(firstname: 'Soniya', lastname: 'Patel', identification:'52961571', dob:'1949-06-02',sex:'Female',address:'322 Brister st', 
	contact: '9016283350', email: 'spatel@hiland.com', description: 'A dancer', password: 'soniya')


ta3 = Tenant.new(firstname: 'Ravi', lastname: 'Shah', identification:'2897503', dob:'1992-02-10',sex:'Male',address:'122 Poplar', 
	contact: '9018509985', email: 'rshah@hiland.com', description: 'A cook', password: 'ravi')

ta4 = Tenant.new(firstname: 'Anju', lastname: 'Bhandari', identification:'25968702', dob:'1949-03-11',sex:'Female',address:'523 Paterson st', 
	contact: '9017427852', email: 'abhandari@hiland.com', description: 'A singer', password: 'anju')


ti1 = Ticket.new(description:'Electricity Broken', status:'Assigned', agentcomment:'Yo. Working on Problem #1.')
ti2 = Ticket.new(description:'Tap broken', status:'Assigned', agentcomment:'Yo. Working on Problem #2.')
ti3 = Ticket.new(description:'Lock not working', status:'Serviced', agentcomment:'Yo. Working on Problem #3.')
ti4 = Ticket.new(description:'Freeze broken', status:'Serviced', agentcomment:'Yo. Working on Problem #4.')
ti5 = Ticket.new(description:'Random Problem5', status:'Assigned', agentcomment:'Yo. Working on Problem #5.')
ti6 = Ticket.new(description:'Random Problem6', status:'Assigned', agentcomment:'Yo. Working on Problem #6.')

pr1 = Property.new(propertyname: 'Brister Apartment', propertyaddress: '5500, Mynder Ave,Memphis,38111', propertyowner: 'Ronald Keaney')
pr2 = Property.new(propertyname: 'David Apartment', propertyaddress: '5501, Mynder Ave,Memphis,38111', propertyowner: 'John Keaney')
pr3 = Property.new(propertyname: 'Sams Apartment', propertyaddress: '6540, Mynder Ave,Memphis,38113', propertyowner: 'William Herald')
pr4 = Property.new(propertyname: 'Jakson Apartment', propertyaddress: '6650, Patterson Ave,Memphis,38105', propertyowner: 'Scott Delisi')
pr5 = Property.new(propertyname: 'Frucson Apartment', propertyaddress: '6650, Dr.John Ave,Memphis,38117', propertyowner: 'Laura Wilson')

ap1 = Apartment.new(apartmentnumber: '01', apartmenttype: '1_Bed', status: 'Occupied',leasestart: '01-03-2016', leaseend: '28-02-2017',rent: 600)
ap2 = Apartment.new(apartmentnumber: '02', apartmenttype: '2_Bed', status: 'Occupied',leasestart: '01-04-2016', leaseend: '30-03-2017',rent: 600)
ap3 = Apartment.new(apartmentnumber: '03', apartmenttype: 'Studio', status: 'Occupied',leasestart: '01-05-2016', leaseend: '30-04-2017',rent: 600)
ap4 = Apartment.new(apartmentnumber: '04', apartmenttype: '3_Bed', status: 'Occupied')
ap5 = Apartment.new(apartmentnumber: '05', apartmenttype: '2_Bed', status: 'Available')
ap6 = Apartment.new(apartmentnumber: '06', apartmenttype: '2_Bed', status: 'Available')
ap7 = Apartment.new(apartmentnumber: '07', apartmenttype: '2_Bed', status: 'Available')
ap8 = Apartment.new(apartmentnumber: '08', apartmenttype: 'Townhouse', status: 'Available')


app1 = Appointment.new(first_name:'Greg ', last_name:'Lamaster', email:'g_lamaster@yahoo.com', comment:'')
app2 = Appointment.new(first_name:'Rexy', last_name:'Wren', email:'rexy_wren@gmail.com', comment:'')
app3 = Appointment.new(first_name:'Corey', last_name:'Fahie', email:'corey_fahie@yahoo.com', comment:'')
app4 = Appointment.new(first_name:'Tina', last_name:'Tate', email:'tinatate@hotmail.com', comment:'')
app5 = Appointment.new(first_name:'Tara', last_name:'Hunter', email:'thunter@gmail.com', comment:'')


ag1.tickets << ti1 << ti2 << ti3
ta1.tickets << ti1 << ti3
ag2.tickets << ti4 << ti5 << ti6



pr1.apartments << ap1 << ap2
pr2.apartments << ap3 << ap4
pr3.apartments << ap5
pr4.apartments << ap6
pr5.apartments << ap7 << ap8

ta1.apartment = ap1
ta2.apartment = ap2
ta3.apartment = ap3
ta4.apartment = ap4

# ta1.rents << rent1 << rent2 << rent3
# ta2.rents << rent4 << rent5
# ta3.rents << rent6 << rent7
# ta4.rents << rent8

# ta1.deposit << diposit1
# ta1.appfees << appfee1

pr1.save!
pr2.save!
pr3.save!
pr4.save!
pr5.save!

ap1.save!
ap2.save!
ap3.save!
ap4.save!
ap5.save!
ap6.save!
ap7.save!
ap8.save!

# le1.save!
# le2.save!
# le3.save!

rent1.save!
rent2.save!
rent3.save!
rent4.save!
rent5.save!
rent6.save!
rent7.save!

diposit1.save!
appfee1.save!

ta1.save!
ta2.save!
ta3.save!
ta4.save!

app1.save!
app2.save!
app3.save!
app4.save!
app5.save!

