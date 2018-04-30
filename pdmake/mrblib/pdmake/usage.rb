module Pdmake
  class << self
    def usage
      msg =<<EOS
Usage: pdmake [filename]
-v | --version  Show version.
-h | --help     Show usage.
EOS
      print msg
    end
  end
end
