contact_data = [["john@email.com", "123 Main st.", "555-123-4567"],
            ["avion@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"John Cruz" => {}, "Avion School" => {}}

# Expected output:
#  {
#    "John Cruz"=>{:email=>"john@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Avion School"=>{:email=>"avion@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
#  }

#defining hash array
contact_hash = {:email => "", :address => "", :phone => ""}

#iterating over contact data
data_hash = contact_data.map{|i| Hash[contact_hash.keys.zip(i)]}

#submitting contact hash array into contacts
contacts.keys.zip(data_hash)