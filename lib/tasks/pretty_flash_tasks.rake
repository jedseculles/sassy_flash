namespace :pretty_flash do
  desc "Copies assets to proper application directories. Optional argument [JAVASCRIPT] (jquery or prototype)."
  task :install, :javascript do |t, args|
    args.with_defaults(:javascript => '')
    ASSETS = File.join(File.dirname(__FILE__), ['..', '..'].join(File::SEPARATOR), 'assets')
    Dir.glob("#{ASSETS}/*").each do |folder|
      folder_name = folder.gsub(/\/.+\//, '')
      destination = File.join(Rails.public_path, folder_name)

      FileUtils.mkpath(destination) unless File.directory?(destination)
      
      Dir[File.join(folder, '/*')].select { |a| File.file?(a) }.each do |asset|
        file_to_copy = File.join(destination, File.basename(asset))
        if folder_name.eql?('javascripts') and !args[:javascript].blank?
          case args[:javascript]
          when 'jquery'
            unless File.exists?(File.join(destination, 'jquery.prettyFlash.js'))
              puts " - copying jquery.prettyFlash.js to %s" % [destination.gsub(Rails.root.to_s, '')]
              FileUtils.cp File.join(ASSETS, "javascripts/jquery.prettyFlash.js"), destination
            else
              puts " - jquery.prettyFlash.js already exist in %s" % [destination.gsub(Rails.root.to_s, '')]
            end
          when 'prototype'
            unless File.exists?(File.join(destination, 'prototype.prettyFlash.js'))
              puts " - copying prototype.prettyFlash.js to %s" % [destination.gsub(Rails.root.to_s, '')]
              FileUtils.cp File.join(ASSETS, "javascripts/prototype.prettyFlash.js"), destination
            else
              puts " - prototype.prettyFlash.js already exist in %s" % [destination.gsub(Rails.root.to_s, '')]
            end
          else
            puts " - no support for %s, copying %s to %s instead" % [args[:javascript], File.basename(asset), destination.gsub(Rails.root.to_s, '')]
            FileUtils.cp asset, destination
          end
        else
          unless File.exists?(file_to_copy)
            puts " - copying %s to %s" % [File.basename(asset), destination.gsub(Rails.root.to_s, '')]
            FileUtils.cp asset, destination
          else
            puts " - %s already exist in %s" % [File.basename(asset), destination.gsub(Rails.root.to_s, '')]
          end
        end
      end
    end
    puts " - done."
  end
end