while true; do
    bash /home/ubuntu/probotsub/usb_reset.sh
    python3 /home/ubuntu/probotsub/MavLink/uploader.py --port /dev/ttyACM1 /home/ubuntu/probotsub/MavLink/ardusub.apj && break
    echo "Retrying..."
    sleep 2
done