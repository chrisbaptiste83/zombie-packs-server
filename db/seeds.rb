
User.create(username:"Michael", password:"michael00", password_confirmation:"michael00", email:"michael@gmail.com") 
User.create(username:"Chris", password:"chris00", password_confirmation:"chris00", email:"chris@gmail.com") 
User.create(username:"Mike", password:"mike00", password_confirmation:"mike00", email:"mike@gmail.com") 
User.create(username:"Rick", password:"rick00", password_confirmation:"rick00", email:"rick@gmail.com") 
User.create(username:"Darryl", password:"darryl00", password_confirmation:"darryl00", email:"darryl@gmail.com")

tactical_packages = [ 

    ["Zombie Machine Gunner", "Tactical package with high capacity round machine gun, three round burst automatic pistol, and plenty of explosives.", "Michael", "1", "Hades", "https://www.pcgamesn.com/wp-content/uploads/2018/10/black-ops-4-weapons-hades.jpg", "RK 7 Garrison", "https://www.pcgamesn.com/wp-content/uploads/2018/05/Black-Ops-4-weapons-RK7-Garrison-900x507.jpg", "Semtex", "https://www.bestgamingsettings.com/wp-content/uploads/2019/11/Semtex.jpg", "Stim", "https://gamewith-en.akamaized.net/img/dce5b5f4d86f0ebec5a13bba9b55fe83.jpg" ],

    ["Sniper", "Tactical package with long range, high-caliber sniper rifle, semi-automatic 12 gauge shotgun, and a claymore mine for defense.", "Chris", "2", "Paladin HB50", "https://www.pcgamesn.com/wp-content/uploads/2018/05/Black-Ops-4-weapons-Paladin-HB50-900x507.jpg", "SG12", "https://www.pcgamesn.com/wp-content/uploads/2018/05/Black-Ops-4-weapons-SG12-900x507.jpg", "Claymore", "https://www.bestgamingsettings.com/wp-content/uploads/2019/11/Claymore.jpg", "Heartbeat Sensor", "https://gamewith-en.akamaized.net/img/d2b7d9bbea74370d132494b3a628b763.jpg" ]

]

tactical_packages.each do |tactical_package|
    TacticalPackage.create( title: tactical_package[0], description: tactical_package[1], creator: tactical_package[2], user_id: tactical_package[3], primary_weapon_name: tactical_package[4], primary_weapon_image_url: tactical_package[5], secondary_weapon_name: tactical_package[6], secondary_weapon_image_url: tactical_package[7], lethal_weapon_name: tactical_package[8], lethal_weapon_image_url: tactical_package[9], tactical_item_name: tactical_package[10], tactical_item_image_url: tactical_package[11] )
  end


