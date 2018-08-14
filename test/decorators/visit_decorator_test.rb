require 'test_helper'

class VisitDecoratorTest < Draper::TestCase
describe VisitDecorator do

  let(:visitissue)  { 'Test1'  }
  let(:visitimage)  { 'test2' }
 

  let(:visit) { FactoryGirl.build(:visit, 
                                 
                                 visitissue: visitissue, 
                                 visitimage: visitimage) }
  
  let(:decorator) { visit.decorate }

  describe '.visitfullname' do

    #...

    context 'with a first and last name' do

      it 'should return the full name' do
        expect(decorator.visitfull_name).to eq("#{ visitissue } #{ visitimage }")
      end
    end

    context 'without a first or last name' do

      before do
        visit.visitissue = ''
        visit.visitimage = ''
      end

      it 'should return no name provided' do
        expect(decorator.visitfull_name1).to eq('No name provided.')
      end

    
      it 'should return no name provided' do
        expect(decorator.visitfull_name3).to eq('No name provided.')
      end
    end    

    # ...

  end
end
end