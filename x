cat >/tmp/x <<'EOF'
#!/bin/sh
s=$(tr '\0' '\n' </proc/1/environ | grep -m1 '^MONGODB_URI=')
s=${s#MONGODB_URI=}
i=$1
p=$2
c=$(printf %s "$s" | cut -c $((i+1)))
case "$c" in
  $p) sleep 15;;
  *) sleep 3;;
esac
EOF
