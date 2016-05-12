while true; do
    echo "Killed TelePlus78"
    kill -9 $(pgrep telegram-cli)
    sleep 2000
done
