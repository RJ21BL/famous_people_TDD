class FamousPeople
  def initialize(people)
    @people = people
  end

  def find_by_nationality(nationality)
    matched_person = @people.select do |person, persons_nationality|
      if persons_nationality == nationality
        @people[person]
      end
    end.keys

    error_message = 'Nationality not matched!'

    if matched_person == []
      raise error_message
    else
      matched_person
    end
  end
end
