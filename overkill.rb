module Overkill
  class Monitor
    def run
      loop do
        output = `ps aux | grep iTunes`.split("\n")
        output.each do |current|
          next if current.include?("iTunesHelper")
          next unless current.include?("/Applications/iTunes.app/Contents/MacOS/iTunes")

          puts "Ugh, iTunes launched again, killing the process... 💥"
          `killall iTunes`
        end
        sleep 0.25
      end
    end

    def self.start
      self.new.run
    end
  end
end

Overkill::Monitor.start
