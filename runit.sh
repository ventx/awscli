docker run -it \
-p 22222:22 \
-v $(pwd)/.aws:/root/.aws -e USERID=$UID \
ventx/awscli:v1


#old stuff
#-v $(pwd)/.aws:/home/$USER/.aws -e USERID=$UID \
