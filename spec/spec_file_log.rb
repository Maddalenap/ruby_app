describe FileLog do
    subject { FileLog.new( File.dirname(File.absolute_path(__FILE__))+"/test.log") }
   
    describe '#initialize' do   
      it 'has a path and empty visits ' do     
        expect(subject.path).to end_with('test.log')
        expect(subject.visits).to eq([])
      end
  
    end
  
    describe '#read_file' do
      it 'read file and check visits' do     
        subject.read_file
        expect(subject.visits).to include(Visit)
        expect(subject.visits.size).to eq(6)      
      end
    end
  
    describe '#ordered_by_page' do 
      it 'sort visits by page' do
        subject.read_file
        expect(subject.ordered_by_page.size).to eq(2)
         end
    end
  
    describe '#counts_ordered_by_page' do
       it 'sort page with a count of the visit' do
        subject.read_file
        expect(subject.counts_ordered_by_page.size).to eq(2)
        expect(subject.counts_ordered_by_page).to eq([["/welcome", 3], ["/index", 3]])
        end
    end
     
end