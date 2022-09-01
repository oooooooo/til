# frozen_string_literal: true

# https://gist.github.com/yteraoka/6028063
# http://multix.jp/delegated-apnic-acl/
# https://ftp.apnic.net/stats/apnic/delegated-apnic-latest

# curl -s http://ftp.apnic.net/stats/apnic/delegated-apnic-latest | ruby japan/ip/cidr.rb

cidrs = {}
Range.new(0, 32).each do |bit|
  length = 2**(32 - bit)
  cidrs[length] = bit
end

ARGF.readlines.each do |line|
  next unless line =~ /^apnic\|JP\|ipv4\|(\d+(?:\.\d+){3})\|(\d+)\|\d+\|allocated/

  addr = Regexp.last_match(1)
  cidr = cidrs[Regexp.last_match(2) || 32]
  puts "#{addr}/#{cidr}"
end
