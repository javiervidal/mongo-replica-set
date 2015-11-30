require 'mongoid'
Mongoid.load!("./mongoid.yml", :production)

class Thing

  include Mongoid::Document

  field :counter, type: Integer
  field :name, type: String

end

thing = Thing.find_or_create_by(name: 'Test')
thing.counter = 0
thing.save

while true do
  thing = Thing.where(name: 'Test').find_and_modify({"$inc" => {counter: 1}})
  puts "#{Time.now}: #{thing.counter}"
  sleep 1
end
