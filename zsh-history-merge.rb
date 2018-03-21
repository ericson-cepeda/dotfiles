#!/usr/bin/env ruby

re = /^:(.+?):(.+?);(.+)/

timestamp, runtime, command = nil
histories = []

ARGF.each do |line|
  line.force_encoding('ASCII-8BIT').chomp!

  begin
    if line.match re
      histories << [timestamp.to_i, runtime.to_i, command] if timestamp
      _, timestamp, runtime, command = Regexp.last_match.to_a
    else
      command = "#{command}\n#{line}"
    end
  rescue => e
    STDOUT.puts e
  end
end


histories.sort do |a, b|
  a[0] <=> b[0]
end.each do |history|
  puts ':%11d:%d;%s' % history
end
