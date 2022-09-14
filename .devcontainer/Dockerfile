FROM anibali/pytorch:1.8.1-cuda11.1-ubuntu20.04

ENV TZ=America/New_York
RUN sudo ln -snf /usr/share/zoneinfo/$TZ /etc/localtime

RUN sudo apt-get update
RUN sudo apt-get install -y sudo joe tree tmux libgl1-mesa-glx libgtk2.0-0 libsm6 libxext6 \
                       openssh-server openssh-client net-tools

RUN python -m pip install --upgrade pip
RUN python -m pip install matplotlib
RUN python -m pip install box2d

EXPOSE 22
#ARG USERNAME
#ARG USER_UID
#ARG USER_GID
ENV USERNAME=user
ENV USER_UID=1000
ENV USER_GID=1000

#RUN sudo groupadd --gid $USER_GID $USERNAME
#RUN sudo useradd --uid $USER_UID --gid $USER_GID -m $USERNAME

#RUN sudo mkdir -p /etc/sudoers.d
#RUN sudo echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME
#RUN sudo chmod 0440 /etc/sudoers.d/$USERNAME
#RUN sudo mkdir -p /home/$USERNAME/.ssh
#RUN sudo chown -R $USERNAME:$USERNAME /home/$USERNAME/.ssh
#RUN sudo usermod --shell /bin/bash $USERNAME
#RUN sudo perl -e 'print "changeme\nchangeme\n";' | passwd $USERNAME

COPY run_on_boot.sh /tmp/runfirst.sh
RUN sudo chmod 755 /tmp/runfirst.sh
