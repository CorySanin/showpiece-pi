#!/bin/bash
systemctl enable docker
systemctl start docker
groupadd docker
gpasswd -a pi docker
newgrp docker
