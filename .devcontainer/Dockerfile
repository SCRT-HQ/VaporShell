FROM mcr.microsoft.com/powershell:preview-ubuntu-20.04

# [Option] Install zsh
ARG INSTALL_ZSH="true"
# [Option] Upgrade OS packages to their latest versions
ARG UPGRADE_PACKAGES="true"

# Install needed packages and setup non-root user. Use a separate RUN statement to add your own dependencies.
ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=$USER_UID
COPY library-scripts/*.sh /tmp/library-scripts/
RUN apt-get update \
    && /bin/bash /tmp/library-scripts/common-debian.sh "${INSTALL_ZSH}" "${USERNAME}" "${USER_UID}" "${USER_GID}" "${UPGRADE_PACKAGES}" \
    && apt-get autoremove -y && apt-get clean -y && rm -rf /var/lib/apt/lists/* /tmp/library-scripts

RUN apt update && apt upgrade \
    && apt install -y python3-pip

RUN pip3 install --upgrade pip && pip3 install --upgrade awscli && pip3 install --upgrade boto3 && pip3 install --upgrade cfn_flip

CMD ["mkdir","/home/vscode/.config/powershell"]
COPY bootstrap.ps1 /tmp/library-scripts/

RUN pwsh -c . /tmp/library-scripts/bootstrap.ps1

COPY ["profile.ps1","/home/vscode/.config/powershell/profile.ps1"]
