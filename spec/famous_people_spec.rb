require 'famous_people'

describe FamousPeople do
  describe '#find_by_nationality' do
    context 'when there is only 1 person matched to the nationality' do
      it 'should return the name' do
        famous_people = FamousPeople.new({
          peter: :hongkong,
          richard: :british,
          einstein: :german,
          napoleon: :french,
          newton: :british,
          lennon: :british
        })
        find_person_by_nationality = famous_people.find_by_nationality
      end
    end

    context 'when there are multiple people matched to the nationality' do
      it 'should return all the names' do
      end
    end

    context 'when there are no people matched to the nationality' do
      it 'should raise an error' do
      end
    end

    context 'when there is a variety of data types' do
      it 'should raise an error when the data type is a integer' do
      end

      it 'should not raise an error if the data type is a symbol or string' do
      end
    end
  end
end