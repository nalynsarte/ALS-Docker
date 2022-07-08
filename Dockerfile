from centos:7

MAINTAINER nalynsarte@gmail.com

# Basic needs
RUN yum update -y \
    && yum install -y \
        wget \
        curl \
    && yum clean -y all
    
# Install dotnet core
RUN mkdir -p /usr/local/dotnet
RUN curl -o dotnet-sdk-6.0.201-linux-x64.tar.gz https://download.visualstudio.microsoft.com/download/pr/c505a449-9ecf-4352-8629-56216f521616/bd6807340faae05b61de340c8bf161e8/dotnet-sdk-6.0.201-linux-x64.tar.gz
RUN tar zxf dotnet-sdk-6.0.201-linux-x64.tar.gz -C /usr/local/dotnet
RUN rm -rf dotnet-sdk-6.0.201-linux-x64.tar.gz
RUN ln -s /usr/local/dotnet/dotnet /usr/bin/dotnet

USER root
