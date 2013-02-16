EOF = nil

$buf = ARGV.empty? ? [] : ARGF.read.split('')
def getchar
  $buf += ($stdin.gets || '').split('') if $buf.empty?
  $buf.shift
end
def isspace c; c =~ /^\s$/ end
def isalpha c; isalnum(c) && !isdigit(c) end
def isalnum c; c =~ /^[^\s();:,=#!<>+\/\*\-\|\&\.]$/ end
def isdigit c; c =~ /^[0-9]$/ end
def isascii c
  if c.is_a? String
    code = c.bytes.to_a.first
    0 <= code and code <= 0x7f
  else
    false
  end
end
