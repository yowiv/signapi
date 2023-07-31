# Generate Signature of JingDong (API)


## Deployment

  - ### Need Install (Run Environment)

    - #### Nodejs & NPM

      - Debian/Ubuntu/Kali

        ```bash
        curl -sL https://deb.nodesource.com/setup_18.x | bash -
        apt-get install -y nodejs
        ```

      - RHEL/CentOS/Fedora

        ```bash
        curl -sL https://rpm.nodesource.com/setup_18.x | bash -
        yum install -y nodejs
        ```

    - #### Python3 & PIP

      - Debian/Ubuntu/Kali

        ```bash
        apt-get install -y python3 python3-pip
        ```

      - RHEL/CentOS/Fedora

        ```bash
        yum install -y python3 python3-pip
        ```

    - #### Modules

      ```bash
      pip3 install flask ; npm install -g pm2
      ```


## Start

  ```bash
  pm2 start jd_sign.py --interpreter /usr/bin/python3
  ```
  > Set the service to start automatically: `pm2 startup && pm2 save`
  

  ```Docker
  docker run \
    -itd \
    --name jdsign \
    --restart always \
    -p 4545:4545 \
    sanling000/jdsign
  ```

## Request Method

  - Listen Port: `4545`

  - Support method: `GET` `POST`
