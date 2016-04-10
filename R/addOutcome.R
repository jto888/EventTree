addOutcome<-function(DF, at, name="", severity=NULL, description="", overwrite=FALSE)  {					
				
	if(length(names(DF))!=14)   stop("first argument must be a fault tree")				
	etree_test<-NULL				
	for(nm in 1:14) {etree_test<-c(etree_test,names(DF)[nm]==ET_FIELDS[nm])}				
	if(!all(etree_test))   stop("first argument must be an event tree")				
					
	parent<-which(DF$ID== at)				
	if(length(parent)==0) {stop("connection reference not valid")}				
					
	if(length(severity)==0)  {				
		severity<-DF$Severity[parent]			
	}				
 					
	availableconn<-which(is.na(DF[parent,9:13]))				
					
					
	if(!overwrite) {				
		thisID<-max(DF$ID)+1			
		DF[parent,(8+availableconn[1])]<-thisID			
					
					
					
					
					
					
					
## write out the outcome here					
					
		Dfrow<-data.frame(			
			ID=	thisID	,
			Level=	thisLevel	,
			Name=	name	,
			Type=	"outcome"	,
			ParentID=	at	,
			Prob=	1	,
			Freq=	DF$Freq[parent]	,
			Severity=	severity	,
			Child1=	NA	,
			Child2=	NA	,
			Child3=	NA	,
			Child4=	NA	,
			Child5=	NA	,
			Description=	description	
			)		
					
		DF<-rbind(DF,Dfrow)			
	}else{				
					
					
		if(DF[parent,3] != "hazard" && DF[parent,4] !="outcome") {			
			stop("overwrite only permitted on hazard outcome")		
		}			
## over-write the last hazard line entry with this new outcome					
		row_num<-parent			
		thisID<-DF$ID[row_num]			
					
					
					
					
## these could be done more concisely, but let's avoid confusion here					
		parent_freq<-DF$Freq[row_num]			
		parent_severity<-DF$Severity[row_num]			
					
		## ID, Level, and ParentID  entries are already correct in DF[rownum,]			
		DF$Name[row_num]<-name			
					
					
					
		DF$Severity[row_num]<-severity			
					
					
					
		DF$Description[row_num]<-description			
					
	}				
					
					
					
	DF				
}					
