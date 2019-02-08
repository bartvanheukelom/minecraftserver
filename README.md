# minecraftserver

Ansible config and some scripts to setup a personal Minecraft server.

- Targetted to run on an AWS EC2 instance with Ubuntu 18.04
- Using Docker for the server
- With safe and storage-optimized automatic backups (on disk, not external yet)
- Sends me push notifications when it starts and while it remains up, so I don't forget to shut it down when I'm not using it (on EC2, this saves cost)
