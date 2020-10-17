s = gets.strip

begin
    print Integer(s)
rescue Exception
    print "Bad String"
end
