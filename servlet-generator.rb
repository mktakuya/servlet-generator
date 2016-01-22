begin
  File.open(ARGV[0]) do |file|
    puts "PrintWriter out = response.getWriter();"
    file.each_line do |line|
      puts "out.println(\"#{line.chomp}\");"
    end
  end
rescue SystemCallError => e
  puts %Q(class=[#{e.class}] message=[#{e.message}])
rescue IOError => e
  puts %Q(class=[#{e.class}] message=[#{e.message}])
end
