#!/bin/bash
systemctl enable docker
systemctl start docker
gpasswd -a pi docker
newgrp docker
