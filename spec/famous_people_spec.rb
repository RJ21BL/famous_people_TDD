require 'famous_people'

describe FamousPeople do
  let(:famous_people) { FamousPeople.new({
    peter: :hongkong,
    richard: :british,
    einstein: :german,
    napoleon: :french,
    newton: :british,
    lennon: :british
  }) }

  describe '#find_by_nationality' do
    context 'when there is only 1 person matched to the nationality' do
      it 'should return the name' do
        find_person_by_nationality = famous_people.find_by_nationality(:german)

        expect(find_person_by_nationality).to eq([:einstein])
      end
    end

    context 'when there are multiple people matched to the nationality' do
      it 'should return all the names' do
        find_person_by_nationality = famous_people.find_by_nationality(:british)

        expect(find_person_by_nationality).to eq([:richard, :newton, :lennon])
      end
    end

    context 'when there are no people matched to the nationality' do
      it 'should raise an error' do
        nationality_error_message = 'Nationality not matched!'

        expect { famous_people.find_by_nationality(:irish) }.to raise_error nationality_error_message
      end
    end

    context 'when there is a variety of data types' do
      it 'should raise an error when the input data type is an integer' do
        integer_error_message = 'You can only input a symbol or string!'

        expect { famous_people.find_by_nationality(1) }.to raise_error integer_error_message
      end

      it 'should not raise an error if the data type is a string' do
        expect { famous_people.find_by_nationality('german') }.not_to raise_error
      end
    end

    context 'when the input is nil' do
      it 'should raise an error if nil has been inputted' do
        nil_input_error_message = 'You must pass in data!'

        expect { famous_people.find_by_nationality(nil) }.to raise_error nil_input_error_message
      end
    end
  end
end
