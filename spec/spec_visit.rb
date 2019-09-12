describe Visit do
    describe 'initialize' do
     
      it 'has a page' do
        visit = described_class.new(page: '/welcome', ip: '10.1.0.12')
  
        expect(visit.page).to eq('/welcome')
      end
  
      it 'has an ip' do
        visit = described_class.new(page: '/welcome', ip: '10.1.0.12')
  
        expect(visit.ip).to eq('10.1.0.12')
      
       end
    end
  end