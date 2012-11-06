
if ARGV.length < 2
	puts 'no input file provided.  pass as first arg to this script'
else

	success = system( "html2haml " << ARGV[0] << " " << ARGV[1]);
	if success

		haml = IO.read( ARGV[1] )
		haml = haml.gsub(/=>/, ":")
		haml = haml.gsub(/{:/, "{")
		haml = haml.gsub(", :", ", ")
		file = File.open( ARGV[1], "w")
		file.write(haml)


	end

	

end
