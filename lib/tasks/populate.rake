namespace :populate do
  desc %Q{ ›› Populate Champions with data from Riot static API v3 }
  task :champions, [:versions] => :environment do |_, args|
    versions = if args.versions
      Riot::StaticData::Versions.new.call.first(args.versions.to_i)
    else
      Riot::StaticData::Versions.new.call
    end

    versions.map do |version|
      puts %Q{ ›› "Populate champions from version: "#{version}"" }

      PopulateChampions.(version: version)
    end
  end
end
