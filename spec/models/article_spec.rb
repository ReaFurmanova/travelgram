require 'rails_helper'

RSpec.describe Article, type: :model do

    it 'creates new article' do
        expect(Article.create!(title: 'Prague', text: 'Is the best', country: 'CZ')).to be_valid
    end

    it 'create article no title' do
        expect{ Article.create!(text: 'Is the best', country: 'CZ') }.to raise_error('Validation failed: Title can\'t be blank')
    end

    it 'create article no text' do
        expect{ Article.create!(title: 'Prague', country: 'CZ') }.to raise_error('Validation failed: Text can\'t be blank')
    end

    it 'create article no country' do
        expect{ Article.create!(title: 'Prague', text: 'Is the best') }.to raise_error('Validation failed: Country can\'t be blank')
    end

end
