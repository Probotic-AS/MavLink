PORT=$(ls -t /dev/ttyACM* 2>/dev/null | head -n1);

if [ -n "$PORT" ]; then
    echo "Uploading to $PORT...";
    bash ../usb_reset.sh;
    python3 px_uploader.py --port "$PORT" --force px4fmu-v2_default.px4;
else
    echo "No /dev/ttyACM* device found! You can try manually running:";
    echo "python3 px_uploader.py --port /dev/ttyACM* --force px4fmu-v2_default.px4";
    echo "replacing /dev/ttyACM* with the correct port if needed.";
    exit 1;
fi