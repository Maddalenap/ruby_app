require_relative 'visit'

class FileLog
  attr_reader :path, :visits

  def initialize(path)
    @path = path
    @visits = []
  end

  # open file and splite line
  def read_file
    File.read(path).each_line do |line|
          page, ip = line.split
          @visits << Visit.new(page: page, ip: ip)
    end
  end

  #sorted pages by visits
  
  def ordered_by_page
    @ordered_by_page ||= visits.group_by { |visit_web| visit_web.page }
  end

  def counts_ordered_by_page
    ordered_by_page.map { |page, visits| [page, visits.count] }.
      sort { |x, y| y.last <=> x.last }
  end
 
end
