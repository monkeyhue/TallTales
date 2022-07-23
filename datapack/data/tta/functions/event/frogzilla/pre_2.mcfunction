#-------------------------------------------------------------#
#
# Main function for the day Frogzilla will spawn
#
#-------------------------------------------------------------#

function tta:event/frogzilla/announce_1
schedule function tta:event/frogzilla/announce_2 2400t
schedule function tta:event/frogzilla/announce_3 4800t
schedule function tta:event/frogzilla/spawn 6000t