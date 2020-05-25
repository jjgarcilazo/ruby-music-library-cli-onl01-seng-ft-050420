class MusicLibraryController

  def initilize(path= ".db/mp3s")
    importer = MusicImporter.new(patch)
    importer.importer
  end
  
