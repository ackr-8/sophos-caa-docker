# Docker container for Sophos Captive Portal Login

A simple docker container which lets users to login to the Sophos UTM Firewall Captive Portal usually used by Universities and Enterprises.

![GitHub Workflow Status](https://img.shields.io/github/workflow/status/ackr-8/sophos-caa-docker/Build?label=Auto-build)

![Docker Pulls](https://img.shields.io/docker/pulls/ackr8/sophos-caa?label=Docker%20pulls)

## Setup

 - Download the config file from [here](https://raw.githubusercontent.com/ackr-8/sophos-caa-docker/main/.caa/caa.conf) and put it in a folder. 

 - Add the IP address of the Captive Portal / Firewall as well as the credentials by replacing the dummy values present in the config file. Ex. 172.18.8.8

- Now run the following command to run and initialize the container :

  ```bash
  docker run --name sophos-caa -v "$(pwd)/caa.conf":/root/.caa/caa.conf --network host ackr-8/sophos-caa:latest
  ```

## Troubleshooting

 - If you lose internet access just restart the container.

 - This docker container currently only supports x86_64 docker hosts so please check your host info before proceeding.

## Tips

 - The password is hashed after one restart and as such its recommended to do so.

 - You can run multiple instances of the tool by making changes to the container name in the docker run command.

 - Check for container updates by either visiting this page or by using tools like Watchtower.

## Donate

You can donate to me using either UPI or with Paypal.

 - UPI : donatetoackr8@upi

     ![UPI-QR](https://i.imgur.com/o0GrLmm.png?1)

 - Paypal : TBA

## Credits

 **Sophos** and **CAA** are registered trademarks of Sophos Ltd.


## References

If you have stumbled upon this project searching for "Sophos Portal Auto Login for Linux" then checkout [this gist](https://gist.github.com/ackr-8/88a147812da9bcf39ef480903fb366b2) for a detailed guide to setup the Agent on Linux hosts directly without docker.

## Disclaimer

The code written by myself is licensed with AGPL V3 and any forks/contributions will follow the same.

This project is in **no** way affiliated to Sophos Ltd.