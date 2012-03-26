class Lab5a
  def string_shuffle(s)
    s.split('').sort_by{rand}
  end


  class String
    def shufle
      self.split('').sort_by{rand}
    end
  end

  person1 = {:first => "The Father ", :last => "Bartolo"}
  perosn2 = {:first => "The Mother", :last => "Bartola"}
  person3 = {:first => "The Son", :last => "Bartolitito"}
  params = {:father => :person1}
  params = {:mother => :person2}
  params = {:son => :person3}
end