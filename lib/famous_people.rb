class FamousPeople
  def initialize(people)
    @people = people
  end

  def find_by_nationality(nationality)
    @people.select do |person, persons_nationality|
      if persons_nationality == nationality
        @people[person]
      end
    end.keys
  end
end
