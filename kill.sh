while true; do
    echo "Killed TelePrr"
    kill -9 $(pgrep telegram-cli)
    sleep 300
done
