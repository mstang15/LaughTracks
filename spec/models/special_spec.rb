RSpec.describe Special do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        special = Special.create
        expect(special).to_not be_valid
      end
    end
  end

  describe 'Class Methods' do
    describe 'average run length' do
      it 'returns an average length of all the specials' do
          tina = Comedian.create(name: "Tina Fey", age: 48, city: "Upper Darby, PA")
          ellen = Comedian.create(name: "Ellen Degeneres", age: 60, city: "Metairie, PA")
          tina_special_1 = tina.specials.create(name:"First Ladies of Comedy", length: 20, photo: "https://i.ytimg.com/vi/iKUFdzBulbk/maxresdefault.jpg" )
          tina_special_2 = tina.specials.create(name:"Living While Funny", length: 5, photo: "https://static1.squarespace.com/static/59b7532ce3df28877c8ba604/t/5aa097489140b75cb2fb36ce/1520473932758/Fey%2C+Tina+3.jpg")
          ellen_special_1 = ellen.specials.create(name:"Here and Now", length: 30, photo: "https://i.ytimg.com/vi/D8jHAMaTEug/hqdefault.jpg" )
          ellen_special_2 = ellen.specials.create(name:"One Night Stand", length: 15, photo: "https://www.etonline.com/sites/default/files/styles/max_970x546/public/images/2016-01/640_ellen_degeneres-503726776.jpg?itok=xDfFM9In")

          average_length = (tina_special_1.length + tina_special_2.length + ellen_special_1.length + ellen_special_2.length).to_f/4
          expect(Special.average_run_length).to eq(average_length)
      end
    end
  end
end
