module Pdmake
  class << self
    def pandoc(filename)
      puts filename

      unless File.exist?(filename)
        puts "No Exists"
        return 1
      end

      File.open(filename) do |file|
        @value = file.read.split("\n")
      end
      
      @value.each_with_index do |value, index|
        if value == "---"
          @first_index = index if @first_index == nil
          @last_index = index
        end
      end
    
      yaml = YAML.load(@value[@first_index+1..@last_index-1].join("\n"))
      template = yaml["_pdmake_template"]
      output_ext = yaml["_pdmake_output"]
      other_arg = yaml["_pdmake_arg"]
      
      if template.nil? || output_ext.nil?
        puts("Error: missing pdmake yaml header.")
        return 1
      end
      
      basename = File.basename(filename)

      system("pandoc -o #{basename}.#{output_ext} #{basename} --template=#{template} #{other_arg}")
    end
  end
end
