# Add file ID to pre-existing cluster ID column

addfileID <- function(exp_data,names){

    filenum = as.numeric(names)
    fileID = rep.int(filenum,nrow(exp_data))
    clusterID = exp_data[,ncol(exp_data)]
    cluster = as.numeric(paste(clusterID,".",fileID,sep=""))

    newMatrix = cbind(exp_data[,-ncol(exp_data)],cluster)

    return(newMatrix)
}

