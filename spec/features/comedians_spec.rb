RSpec.describe "Comedians" do
  describe "When I visit /comedians" do
    it "has a list of comedians" do
      comedian_1 = Comedian.create(name: "Tina Fey", age: 48, city: "Upper Darby, PA")
      comedian_2 = Comedian.create(name: "Ellen Degeneres", age: 60, city: "Metairie, PA")
      comedian_3 = Comedian.create(name: "Whoopi Goldberg", age: 62, city: "New York City, NY")

      visit '/comedians'

      within('#comedians') do
        expect(page).to have_content(comedian_1.name)
        expect(page).to have_content(comedian_2.name)
        expect(page).to have_content(comedian_3.name)
      end
    end

    it "has names" do
      comedian_1 = Comedian.create(name: "Tina Fey", age: 48, city: "Upper Darby, PA")

      visit '/comedians'

      within('#comedians') do
        expect(page).to have_content(comedian_1.name)
      end
    end

    it "has age" do
      comedian_1 = Comedian.create(name: "Tina Fey", age: 48, city: "Upper Darby, PA")

      visit '/comedians'

      within('#comedians') do
        expect(page).to have_content(comedian_1.age)
      end
    end

    it "has city" do
      comedian_1 = Comedian.create(name: "Tina Fey", age: 48, city: "Upper Darby, PA")

      visit '/comedians'

      within('#comedians') do
        expect(page).to have_content(comedian_1.city)
      end
    end

    it "has a list of specials for each comedian" do
      tina = Comedian.create(name: "Tina Fey", age: 48, city: "Upper Darby, PA")
      ellen = Comedian.create(name: "Ellen Degeneres", age: 60, city: "Metairie, PA")
      tina_special_1 = tina.specials.create(name:"First Ladies of Comedy", length: 26.57, photo: "https://i.ytimg.com/vi/iKUFdzBulbk/maxresdefault.jpg" )
      tina_special_2 = tina.specials.create(name:"Living While Funny", length: 36.57, photo: "https://static1.squarespace.com/static/59b7532ce3df28877c8ba604/t/5aa097489140b75cb2fb36ce/1520473932758/Fey%2C+Tina+3.jpg")
      ellen_special_1 = ellen.specials.create(name:"Here and Now", length: 59.55, photo: "https://i.ytimg.com/vi/D8jHAMaTEug/hqdefault.jpg" )
      ellen_special_2 = ellen.specials.create(name:"One Night Stand", length: 29.08, photo: "https://www.etonline.com/sites/default/files/styles/max_970x546/public/images/2016-01/640_ellen_degeneres-503726776.jpg?itok=xDfFM9In")

      visit '/comedians'

      within('#comedians') do
        expect(page).to have_content(tina_special_1.name)
        expect(page).to have_content(tina_special_1.length)
        expect(page).to have_content(tina_special_2.name)
        expect(page).to have_content(tina_special_2.length)
        expect(page).to have_content(ellen_special_1.name)
        expect(page).to have_content(ellen_special_1.length)
        expect(page).to have_content(ellen_special_2.name)
        expect(page).to have_content(ellen_special_2.length)
      end
    end

    it "I see statistics at the top of the page" do
      visit '/comedians'

      within('#statistics') do
        expect(page).to have_content("Statistics")
      end
    end
  end
end
