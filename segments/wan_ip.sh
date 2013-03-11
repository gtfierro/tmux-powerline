run_segment() {
    if [ -z "$wan_ip" ]; then
      wan_ip=$(curl --max-time 2 -s http://whatismyip.akamai.com/)
    fi

    if [ -n "$wan_ip" ]; then
      echo "ⓦ ${wan_ip}"
      exit 0
    else
      exit 1
    fi
}
