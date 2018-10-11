qm<-function(...)
{
    # turn ... into string
    args<-deparse(substitute(rbind(cbind(...))))
    
    # create "rbind(cbind(.),cbind(.),.)" construct
    args<-gsub("\\|","),cbind(",args)
    
    # eval
    eval(parse(text=args))
}