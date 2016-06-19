# Copy data for consented patients
# 
# Author: bhoff
###############################################################################

# TODO for a list of tables in the live project, find the consented patients
# and copy their data from the corresponding tables in the archiveProject
# Note:  If they show up in *any* table in the live project we copy data from
# *all* the tables in the archive project
MoveMoleMapper<-function(archiveProjectId, liveProjectId) {
	
	# In Bridge projects, there is a *-appVersion table ... where the following (example) 
	# query can be run to determine the names of the Bridge tables being exported into:

	# SELECT DISTINCT originalTable FROM syn4984903
}
