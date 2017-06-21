# NOTE:
# This shell script and Alfred.app plugin _DOES NOT_ currently work as
# expected in Mac OS X 10.12.5 (16F73)
#
# Script via Github User, @mikz:
# https://gist.github.com/mikz/1337933

read -s -r -d '' SCRIPT <<"EOF"
framework 'ScriptingBridge'

rating = ARGV.pop
itunes = SBApplication.applicationWithBundleIdentifier("com.apple.itunes")
track = itunes.currentTrack
track.rating = rating.to_f*20
puts "#{track.artist} - #{track.name} rated #{rating} stars"
EOF

/usr/local/bin/ruby -e "$SCRIPT" {query}
