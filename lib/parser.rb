require_relative 'file_log'

file_log = FileLog.new(ARGV[0])

file_log.read_file

puts "\nPage list sorted:\n#{file_log.counts_ordered_by_page}"

