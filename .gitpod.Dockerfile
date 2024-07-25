FROM gitpod/workspace-full-vnc

# Installer Java 17
RUN sudo apt-get update && sudo apt-get install -y openjdk-17-jdk

# Installer Maven
RUN curl -fsSL https://apache.mirror.digitalpacific.com.au/maven/maven-3/3.8.6/binaries/apache-maven-3.8.6-bin.tar.gz | tar -xz -C /opt/ && \
    sudo ln -s /opt/apache-maven-3.8.6/bin/mvn /usr/local/bin/mvn

# Configurer Java 17 comme version par défaut
RUN sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/java-17-openjdk-amd64/bin/java 1 && \
    sudo update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/java-17-openjdk-amd64/bin/javac 1 && \
    sudo update-alternatives --set java /usr/lib/j
