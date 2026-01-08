select greatest("Source","Destination"), least("Source" , "Destination") , max("Distance")
from travel
group by  greatest("Source","Destination"), least("Source" , "Destination")