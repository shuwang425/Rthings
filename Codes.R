######################.  R Basics  ###########################################

###################### R data type and sub-setting  ############################

##### matrix and matrix subsetting

x <-  matrix(1:6, 2, 3)
x

###matrix subsetting
x[1, 2]  # default to drop the dimension
x[1, 2, drop=FALSE]. # 'drop' means whether or not drop the dimension




######################################################################################
##############.  partial matching   ####################################################
#####################################################################################

a <- list(aardvark = 1: 5)
a$aardvark


######################################################################################
##############.  Remove Missing Values.   ############################################
#####################################################################################

b <-  c(1, 2, NA, 4, NA, 5)
c <-  c("a", 'b', NA, 'd', NA, 'f')
bad <-  is.na(b)
bad
b[!bad]

good <-  complete.cases(b, c) ## complete.cases used to remove missing values in vector, matrix, or data frame
                              ###complete.cases return logical values
b[good]
c[good]
