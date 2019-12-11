module Overkill
  class Monitor
    def run
      output = `ps aux | grep -E "#{apps_to_kill.keys.join('|')}"`.split("\n")
      output.each do |current|
        next if blacklist.any? { |a| current.include?(a) }

        apps_to_kill.each do |app_name, emoji|
          next unless current.include?("/Applications/#{app_name}.app/Contents/MacOS/#{app_name}")

          puts "#{app_name} launched itself, killing the process now... 💥 #{emoji}"
          `killall #{app_name}`
        end
      end
      sleep 0.1
    end

    def apps_to_kill
      apps = {
        "Music" => "🎵"
      }
      apps["Photos"] = "🖼" if ENV["KILL_PHOTOS"]

      apps
    end

    def blacklist
      [
        "iTunesHelper"
      ]
    end

    def self.start
      loop do
        self.new.run
      end
    end
  end
end

Overkill::Monitor.start
