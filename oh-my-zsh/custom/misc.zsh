
# Look up words in your shell 
function j() { dig $1.jianbing.org txt +short | perl -pe's/\\(\d{1,3})/chr $1/eg; s/"//g'; }


