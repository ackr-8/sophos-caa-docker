# Docker container for Sophos Captive Portal Login

A simple docker container which lets users to login to the Sophos UTM Firewall Captive Portal usually used by Universities and Enterprises.

## Setup

Download the config file from [here](https://github.com/ackr-8/) and put it in a folder. 

Add the IP address of the Captive Portal / Firewall as well as the credentials by replacing the dummy values present in the config file.

Now run the following command to run and initialize the container :

```bash
docker run -v "$(pwd)/caa.conf":/root/.caa/caa.conf --network host ackr-8/caa:latest
```

## Troubleshooting

If you lose internet access just restart the container

## Tips

The password is hashed after one restart and as such its recommended to do so.

## Credits

**Sophos** and **CAA** are registered trademarks of Sophos Ltd.

This project is in **no** way affiliated to Sophos Ltd.