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

    describe 'unique_cities' do
      it'can create list of unique cities' do
        tina = Comedian.create(name: "Tina Fey", age: 33, city: "Upper Darby, PA")
        kevin = Comedian.create(name: "Kevin", age: 33, city: "Hershey, PA")
        zach = Comedian.create(name: "Zach", age: 33, city: "Dallas, TX")
        ellen = Comedian.create(name: "Ellen Degeneres", age: 22, city: "Metairie, PA")
        steve = Comedian.create(name: "Steve ", age: 12, city: "Metairie, PA")
        city_array =[tina.city, kevin.city, zach.city, ellen.city, steve.city]
        unique_city_array = city_array.uniq
        expect(Comedian.unique_cities).to include(unique_city_array[0])
        expect(Comedian.unique_cities).to include(unique_city_array[1])
        expect(Comedian.unique_cities).to include(unique_city_array[2])
        expect(Comedian.unique_cities).to include(unique_city_array[3])
      end
    end
  end
end
