#!/usr/bin/awk -f

BEGIN{FS="|"}
 {if($4 ~ /length/)
	 {print $1, substr($4,9) ;}
}
