id=$(xprop -root | awk '/_NET_ACTIVE_WINDOW\(WINDOW\)/{print $NF}')
xprop -id $id | awk '/WM_CLASS/{$1=$2="";print}' | cut -d'"' -f2
