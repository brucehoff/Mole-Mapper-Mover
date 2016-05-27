# This is the main entry point for the mPower daily processing
# 
# Author: bhoff
###############################################################################

library(MoleMapperMover)
library(synapseClient)


# make sure to be 'logged in' to Synapse as Bridge exporter
#
main<-function() {
	liveProjectId<-"syn4891052"
	archiveProjectId<-"syn6126493"
	MoleMapperMover::MoveMoleMapper()
}

username<-Sys.getenv("SYNAPSE_USERNAME")
if (nchar(username)==0) {
	cat("ERROR: Environment variable SYNAPSE_USERNAME is missing.\n")
	q("no")
}
apiKey<-Sys.getenv("SYNAPSE_APIKEY")
if (nchar(apiKey)==0) {
	cat("ERROR: Environment variable SYNAPSE_APIKEY is missing.\n")
	q("no")
}

cacheDir<-Sys.getenv("CACHE_DIR")
if (nchar(cacheDir)>0) {
	synapseCacheDir(cacheDir)
}

# log in to Synapse
synapseLogin(username=username, apiKey=apiKey, rememberMe=F)


main()
