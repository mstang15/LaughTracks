RSpec.describe Comedian do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        comic = Comedian.create(age: 48)
        expect(comic).to_not be_valid
      end

      it 'should be invalid if missing an age' do
        comic = Comedian.create(name: 'Mitch Hedberg')
        expect(comic).to_not be_valid
      end
    end
  end

  describe 'Class Methods' do
    describe 'average_age' do
      it 'can find average age of all comedians' do
        tina_age = 48
        ellen_age = 60
        tina = Comedian.create(name: "Tina Fey", age: tina_age, city: "Upper Darby, PA")
        ellen = Comedian.create(name: "Ellen Degeneres", age: ellen_age, city: "Metairie, PA")

        average_age = (tina_age + ellen_age)/2
        expect(Comedian.average_age).to eq(average_age)
      end
    end
  end
end
