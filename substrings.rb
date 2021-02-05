dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  
def substrings(word, array)
    word=word.delete(",!.?").downcase
    word=word.split(" ")
    
   final_hash = array.reduce(Hash.new(0)) do |hash, words|
    word.map do |check|   
      if check.include?(words)
        hash[words]+=1
      end
    end
    hash
end
end

puts substrings("Below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
