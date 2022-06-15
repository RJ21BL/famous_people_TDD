class FamousPeople
  def initialize(people)
    @people = people
  end

  def find_by_nationality(nationality = nil)
    converted_nationality = nationality.to_sym if nationality.is_a? String

    nationality_error_message = 'Nationality not matched!'
    integer_error_message = 'Input a symbol or string!'
    nil_input_error_message = 'No data inputted!'

    find_person = @people.select do |person, persons_nationality|
      if nationality.nil?
        raise nil_input_error_message
      elsif nationality.is_a? Integer
        raise integer_error_message
      elsif persons_nationality == converted_nationality
        @people[person]
      elsif persons_nationality == nationality
        person
      end
    end.keys

      raise nationality_error_message if find_person.empty?
      find_person
  end
end
