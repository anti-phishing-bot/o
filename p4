cat > /app/public/marker.svg <<'EOF'
<svg xmlns="http://www.w3.org/2000/svg" width="64" height="64"><rect width="64" height="64" fill="red"/></svg>
EOF
cat > /app/.next/standalone/public/marker.svg <<'EOF'
<svg xmlns="http://www.w3.org/2000/svg" width="64" height="64"><rect width="64" height="64" fill="blue"/></svg>
EOF
cat > /var/www/html/marker.svg <<'EOF'
<svg xmlns="http://www.w3.org/2000/svg" width="64" height="64"><rect width="64" height="64" fill="green"/></svg>
EOF
cat > /var/www/marker.svg <<'EOF'
<svg xmlns="http://www.w3.org/2000/svg" width="64" height="64"><rect width="64" height="64" fill="yellow"/></svg>
EOF
cat > /usr/share/nginx/html/marker.svg <<'EOF'
<svg xmlns="http://www.w3.org/2000/svg" width="64" height="64"><rect width="64" height="64" fill="purple"/></svg>
EOF
cat > /srv/www/marker.svg <<'EOF'
<svg xmlns="http://www.w3.org/2000/svg" width="64" height="64"><rect width="64" height="64" fill="orange"/></svg>
EOF
