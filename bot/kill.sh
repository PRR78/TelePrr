while true; do
    echo "Killed TelePlus"
    kill -9 $(pgrep telegram-cli)
    sleep 2000
done
