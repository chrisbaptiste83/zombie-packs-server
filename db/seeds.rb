
User.create(username:"Michael", password:"michael00", password_confirmation:"michael00", email:"michael@gmail.com") 
User.create(username:"Chris", password:"chris00", password_confirmation:"chris00", email:"chris@gmail.com") 
User.create(username:"Mike", password:"mike00", password_confirmation:"mike00", email:"mike@gmail.com") 
User.create(username:"Rick", password:"rick00", password_confirmation:"rick00", email:"rick@gmail.com") 
User.create(username:"Darryl", password:"darryl00", password_confirmation:"darryl00", email:"darryl@gmail.com")

tactical_packages = [ 

    ["Zombie Machine Gunner", "Tactical package with high capacity round machine gun, three round burst automatic pistol, and plenty of explosives.", "Michael", "1", "Hades", "RK 7 Garrison", "Semtex", "Stim"],

    ["Sniper", "Tactical package with long range, high-caliber sniper rifle, semi-automatic 12 gauge shotgun, and a claymore mine for defense.", "Chris", "2", "Paladin HB50", "SG12", "Claymore", "Heartbeat Sensor"]

]

tactical_packages.each do |tactical_package|
    TacticalPackage.create( title: tactical_package[0], description: tactical_package[1], creator: tactical_package[2], user_id: tactical_package[3], primary_weapon_name: tactical_package[4], secondary_weapon_name: tactical_package[5], lethal_weapon_name: tactical_package[6], tactical_item_name: tactical_package[7])
  end  

  sniper_package = TacticalPackage.all.first 

  sniper_package.avatar.attach(
      io: File.open('./public/images/weapons_class.jpg'), 
      filename: 'weapons_class.jpg', 
      content_type: 'application/jpg'
  ) 

  shotgun_package =  TacticalPackage.all.last 

  shotgun_package.avatar.attach(
      io: File.open( './public/images/shotgun.jpg'), 
      filename: 'shotgun.jpg', 
      content_type: 'application/jpg'  
    )



