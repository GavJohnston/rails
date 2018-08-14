require 'test_helper'

class CustomerDecoratorTest < Draper::TestCase
describe CustomerDecorator do

  let(:customerfirst_name)  { 'John'  }
  let(:customerlast_name)  { 'Smith' }
  let(:customeraddress)  { 'TEST' }

  let(:customer) { FactoryGirl.build(:customer, 
                                 customeraddress: customeraddress,
                                 customerfirst_name: customerfirst_name, 
                                 customerlast_name: customerlast_name) }
  
  let(:decorator) { customer.decorate }

  describe '.customerfullname' do

    #...

    context 'with a first and last name' do

      it 'should return the full name' do
        expect(decorator.customerfull_name).to eq("#{ customerfirst_name } #{ customerlast_name }")
      end
    end

    context 'without a first or last name' do

      before do
        customer.customerfirst_name = ''
        customer.customerlast_name = ''
      end

      it 'should return no name provided' do
        expect(decorator.customerfull_name).to eq('No name provided.')
      end
    end

    # ...

  end
end
end