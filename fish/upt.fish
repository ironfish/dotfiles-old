function upt
  uptime |awk -F, '{print $1,$2}' | sed 's/:/h, /g;s/^.*up */⇑ /; s/ *[0-9]* user.*//;s/[0-9]$/&m/;s/ day. */d, /g'
end
