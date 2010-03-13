function dotime
	set start (date)
	set startsec (date +%s)
	echo \033k$argv[1]\033\134
	eval $argv
	set end (date)
	set endsec (date +%s)
	set total (dc -e "$endsec $startsec - p")
	echo "------------"
	echo " Started at:"\t$start
	echo "Finished at:"\t$end
  if type growlnotify
	  growlnotify -t "$argv" -m "$total seconds
  end
$start
$end"


end
