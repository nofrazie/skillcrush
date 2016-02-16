class Person < ActiveRecord::Base

  validates_presence_of :birthdate, :first_name, :last_name

  def self.get_birth_path_num(birthdate)
    sum = 0

    birthdate.split("").each do |num|
    	sum += num.to_i
    end

    while sum.to_s.length == 2
    	sum2 = 0
    	sum.to_s.split("").each do |i|
    		sum2 += i.to_i
    	end
    	sum = sum2
    end

    return sum
  end

  def self.get_birth_path_message(numerology_num)

    numerology = {
    	1 => "Your numerology number is 1.\nOne is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun.",
    	2 => "Your numerology number is 2.\nThis is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon.",
    	3 => "Your numerology number is 3.\nNumber Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three's enjoy life and have a good sense of humor. Ruled by Jupiter.",
    	4 => "Your numerology number is 4.\nThis is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus.",
    	5 => "Your numerology number is 5.\nThis is the freedom lover. The number five is an intellectual vibration. These are 'idea' people with a love of variety and the ability to adapt to most situations. Ruled by Mercury.",
    	6 => "Your numerology number is 6.\nThis is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus.",
    	7 => "Your numerology number is 7.\nThis is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune.",
    	8 => "Your numerology number is 8.\nThis is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn.",
    	9 => "Your numerology number is 9.\nThis is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
    }

    message = numerology[numerology_num]
    return message
  end

  def self.valid_birthdate(input)
    if(input.length == 8 && !input.match(/^[0-9]+[0-9]$/).nil?)
      true
    else
      false
    end
  end

end
