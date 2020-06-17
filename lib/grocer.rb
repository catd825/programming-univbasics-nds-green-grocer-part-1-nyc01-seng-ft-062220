require 'pry'

def find_item_by_name_in_collection(name, collection)

  final_hash=nil
  
    collection.each do |hashes| #iterate over array of hashes that contain keys and values for each grocery item
      hashes.each do |item, item_name| #iterate over each hash to return key and value for each item
        if name == item_name #if the item passed through matches an item in the car
          final_hash = hashes #assign the hash it exists in
        end
      end
    end
  final_hash #return hash that the item exists in
end


#inputs are a name (string) and collection (array of hashes).  
#need input to match the value within a hash within an array
#return value should be the hash the value exists in



def consolidate_cart(cart) 
cart_with_count = []
  cart.each_with_index do |hash, index|
    hash[:count] = 0
    hash.each do |hash_key, hash_value|
    counter = find_item_by_name_in_collection(hash_value, cart_with_count)
      if counter != nil
        #
      else
      binding.pry
      end
    end
  end

cart_with_count

end


#pass through array of hashes, which include item, price, and clearance

#we want to return array of hashes along with COUNT
# [iterate over each{k=>v, k=>v, k=>v} {k=>v, k=>v, k=>v} {k=>v, k=>v, k=>v}]
# iterate over first key value pair :item
# count occurrences of :item's value 
# if 


