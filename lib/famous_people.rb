class FamousPeople
  def initialize(people)
    @people = people
  end

  def find_by_nationality(nationality = nil)
    if nationality.is_a? String
      matched_person = @people.select do |person, persons_nationality|
        if persons_nationality == nationality.to_sym
          @people[person]
        end
      end.keys
    else
      matched_person = @people.select do |person, persons_nationality|
          if persons_nationality == nationality
            @people[person]
          end
        end.keys
    end

    nationality_error_message = 'Nationality not matched!'
    integer_error_message = 'You can only input a symbol or string!'
    nil_input_error_message = 'Pass in a string or symbol!'

    if nationality.is_a? Integer
      raise integer_error_message
    elsif nationality.nil?
      raise nil_input_error_message
    elsif matched_person.empty?
      raise nationality_error_message
    else
      matched_person
    end
  end
end
