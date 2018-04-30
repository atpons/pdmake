def __main__(argv)

  opts = Getopts.getopts("vh","version","help")

  if opts["v"] || opts["version"]
    Pdmake.version
    return
  end

  if opts['h'] || opts["help"]
    Pdmake.usage
    return
  end
  

  Pdmake.pandoc(ARGV.last)

end

