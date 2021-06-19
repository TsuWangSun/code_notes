

# read file #
## tsv or csv
var=read.csv(file='PATH',header=F,sep='\t or ,')
## fasta
library("Biostrings")
var=readAAStringSet('PATH')
var=readDNAStringSet('PATH') 
names(var) # labels
paste(var) # sequences
width(var) # sequence length

# write file #
## tsv or csv
write.table(var, file='PATH', sep='\t', quote=F,row.names=F, col.names=T)
## text
write(var,file='PATH')
## fasta
library("seqinr")
write.fasta(seqs_list, labels,'PATH')




# for loop
for(i in start:end){}
# function
func=function(vars){return()}
func(vars)
# string to variable name
assign("a1",something_under_a1) # assign
eval(parse(text='a1')) # get value
# get time
md=format(Sys.time(),"%m%d")
# array with name
var=array(data=0, dim=c(row_length,col_length), dimnames=list(y=c(rownam),x=c(colnam)))
# array
var=matrix(data=0,nrow=row_length,ncol=colo_length)
# merge dataframe
var=merge(A_df,B_df,by="INDEX", all.x=T, sort=F)
# system command
system('COMMAND')
# create directory
dir.create('PATH')


# strings
library('stringr')
str_extract(target, "REGEX")
sub("REGEX","to",target) # first in each string
gsub("REGEX","to",target) # all in each string
grep("REGEX",target) # get idx
grep("REGEX",target,value=T) # get match
grepl("REGEX",target) # get T/F
char() # character number

###

intersect()
sort()
rank()
order()

var=aggregate(need$Length, list(str_extract(need$Abre,"\\D+")), mean)
new=eval(parse(text = paste0("a",k)))

wilcox.test(geom_norm~shost,mu=0,alternative="less",conf.int=T,data=ddd)

# ggplots #
## scatter
ggplot(data, aes(x=colx,y=coly))+ theme_classic()+
  geom_point(aes(shape=colshape,color=colcolor))+ 
  scale_shape_manual(values=c(19, 18, 17, 15, 4))+ # shape ● ◆ ▲ ▪ x 
  scale_color_manual(values=c(colorcodes))+ # color
  theme(legend.position="none")+ # no legend
  labs(x="x_axis", y="y_axis") # axis

## violin with box (and dots)
ggplot(data, aes(x=colx,y=coly))+
  geom_violin()+theme_linedraw()+geom_boxplot(width=0.05)+
  #geom_dotplot(binaxis='y', stackdir='center', dotsize=0.1)+#geom_jitter(width=0.25,size=0.5)+
  theme(axis.text.x=element_text(size=10))+ #axis.title=
  scale_x_discrete(labels=c(paste0("non-",ht),ht))

## box with dots
ggplot(data, aes(x=reorder(colx, -coly), y=coly))+ #sort by y axis
  geom_boxplot(fill=data$color,outlier.size=0.5)+
  geom_jitter(width=0.15,size=0.05,colour='gray28')

#functions
multidel1=function(pat,x){
  for(p in pat){
    x=sub(p,"",x)
  }
  return(x)
}
multideln=function(pat,x){
  for(p in pat){
    x=gsub(p,"",x)
  }
  return(x)
}
multigrep=function(pat,x){
  ind=NULL
  for(p in pat){
    ind=c(ind,grep(p,x))
  }
  return(ind)
}
multistrcnt=function(pat,x){
  ind=NULL
  for(p in pat){
    ind=c(ind,str_count(x,p))
  }
  return(ind)
}












