class Word

  def self.find_anagrams(string)
    string.split("").permutation.map {|i| i.join}
  end
  
end
