require 'rails_helper'

RSpec.describe User, type: :model do

    it 'creates new user' do
        expect(User.create!(name: 'Alena', email: 'alena@example.com', password: 'reuska')).to be_valid
    end

    it 'creates user no name' do
        expect{ User.create!(email: 'alena@example.com', password: 'reuska') }.to raise_error('Validation failed: Name can\'t be blank')
    end

    it 'creates user no email' do
        expect{ User.create!(name: 'Alena', password: 'reuska') }.to raise_error('Validation failed: Email can\'t be blank')
    end

    it 'creates user no password' do
        expect{ User.create!(name: 'Alena', email: 'alena@example.com') }.to raise_error('Validation failed: Password can\'t be blank')
    end

end

