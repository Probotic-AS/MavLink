PORT=$(ls -t /dev/ttyACM* 2>/dev/null | head -n1)

if [ -n "$PORT" ]; then
    while true; do
        bash ../usb_reset.sh;
        echo "Uploading to $PORT..."
        python3 px_uploader.py --port "$PORT" --force px4fmu-v2_default.px4 && break
        echo "Retrying..."
        sleep 2
    done
else
    echo "No /dev/ttyACM* device found! You can try manually running:"
    echo "python3 px_uploader.py --port /dev/ttyACM* --force px4fmu-v2_default.px4"
    echo "replacing /dev/ttyACM* with the correct port if needed."
    exit 1
fi