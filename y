cat >/tmp/y <<'EOF'
#!/bin/sh
eval "$1"
if [ $? -eq 0 ]; then sleep 15; else sleep 3; fi
EOF
