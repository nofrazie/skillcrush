def find_anagram(string)
  string.split("").permutation.map {|i| i.join}
end
