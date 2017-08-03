namespace :populate do
  desc %Q{ ›› Populate Champions with data from Riot static API v3 }
  task :champions, [:season] => :environment do |_, args|
    SeasonVersions.(season: args.season).first(5).map do |version|
      puts %Q{ ›› "Populate champions from version: "#{version}"" }

      PopulateChampions.(version: version)
    end
  end
end
