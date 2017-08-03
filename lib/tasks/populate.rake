namespace :populate do
  desc %Q{ ›› Populate Champions with data from Riot static API v3 }
  task :champions, [:season] => :environment do |_, args|
    PopulateChampions.(season: args.season)
  end
end
