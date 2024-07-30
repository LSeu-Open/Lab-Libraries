# Virtualization

🟨 **Intermediate** (Recommended experience)

## Table of Contents

+ [Containers](#containers)
    - [What is Containerization?](#what-is-containerization)
    - [Benefits of Containerization](#benefits-of-containerization)
    - [Containerization Use Cases](#containerization-use-cases)
    - [How Does Containerization Work?](#how-does-containerization-work)
    - [Types of Container Technology](#types-of-container-technology)
        - [Docker](#docker)
        - [Linux Containers](#linux-containers)
+ [Virtual Machines](#virtual-machines)
    - [What is a Virtual Machine?](#what-is-a-virtual-machine)
    - [Containerization vs Virtual Machine](#containerization-vs-virtual-machine)
    - [Popular Virtual Machine Tools](#popular-virtual-machine-tools)
+ [Container Orchestration](#container-orchestration)
    - [What is Container Orchestration?](#what-is-container-orchestration)
    - [Popular Container Orchestration Tools](#popular-container-orchestration-tools)
    - [Kubernetes](#kubernetes)

## Containers

### What is Containerization?

Containerization is a method of packaging software into standardized units for development, shipment, and deployment. A container includes everything needed to run a piece of software, such as the code, runtime, system tools, libraries, and settings. This ensures that the software runs consistently across different computing environments.

#### Key Concepts

- **Container**: A lightweight, standalone, and executable package that includes everything needed to run a piece of software.
- **Image**: A read-only template with instructions for creating a new container.
- **Docker**: A popular platform for developing, shipping, and running applications inside containers.
- **Orchestration**: The automated management of containers, including deployment, scaling, and networking.

#### Example

Imagine you have a web application that requires a specific version of Python and several libraries. Without containerization, you might run into issues when deploying the application on different systems due to differences in the environment. By containerizing the application, you package it with all its dependencies, ensuring it runs consistently regardless of the underlying system.

## Benefits of Containerization

Containerization offers several benefits that make it a popular choice for modern software development and deployment:

1. **Consistency**: Ensures that the software runs the same way in development, testing, and production environments.
2. **Isolation**: Containers run in isolated environments, preventing conflicts between different applications and their dependencies.
3. **Portability**: Containers can run on any system that supports the container runtime, making it easy to move applications between different environments.
4. **Efficiency**: Containers are lightweight and share the host system's operating system kernel, making them more efficient than virtual machines.
5. **Scalability**: Containers can be easily scaled up or down based on demand, making them suitable for microservices architectures.
6. **Simplified Deployment**: Containers simplify the deployment process by packaging all dependencies together, reducing the risk of "it works on my machine" issues.

## Containerization Use Cases

Containerization is used in various scenarios to improve software development and deployment processes:

1. **Microservices Architecture**: Containers are ideal for deploying microservices, where each service runs in its own container.
2. **Continuous Integration/Continuous Deployment (CI/CD)**: Containers enable consistent and reliable builds and deployments across different environments.
3. **Multi-Cloud Deployments**: Containers can run on any cloud platform that supports the container runtime, making it easy to deploy applications across multiple clouds.
4. **DevOps**: Containers facilitate collaboration between development and operations teams by providing a consistent environment for development, testing, and production.
5. **Legacy Application Modernization**: Containers can be used to modernize legacy applications by packaging them with their dependencies, making them easier to manage and deploy.

## How Does Containerization Work?

## Types of Container Technology

**Docker**
Docker, or Docker Engine, is a popular open-source container runtime that allows software developers to build, deploy, and test containerized applications on various platforms. Docker containers are self-contained packages of applications and related files that are created with the Docker framework.

**Linux Containers**
Linux is an open-source operating system with built-in container technology. Linux containers are self-contained environments that allow multiple Linux-based applications to run on a single host machine. Software developers use Linux containers to deploy applications that write or read large amounts of data. Linux containers do not copy the entire operating system to their virtualized environment. Instead, the containers consist of necessary functionalities allocated in the Linux namespace.  

## Docker

Docker is a popular platform for developing, shipping, and running applications inside containers. It provides a set of tools and services to automate the deployment of applications in lightweight, portable containers.

### Key Concepts

- **Dockerfile**: A script containing a series of instructions on how to build a Docker image.
- **Docker Image**: A read-only template with instructions for creating a new container.
- **Docker Container**: A runtime instance of a Docker image.
- **Docker Hub**: A cloud-based registry service that allows you to link to code repositories, build your images, and test them.

### How Docker Works

1. **Building an Image** : You create a Dockerfile that specifies the base image and the commands to install dependencies and configure the environment.

```sh
# Example Dockerfile
FROM python:3.8-slim
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
CMD ["python", "app.py"]
```

2. **Creating a Container** : Use the Docker CLI to build the image and create a container from it.

```
docker build -t my-app:latest .
docker run -d --name my-app-container my-app:latest
```

3 . **Managing Containers** : Use Docker commands to manage the container lifecycle.

```
docker stop my-app-container
docker start my-app-container
docker rm my-app-container
```

### Docker Commands

* Build an Image: `docker build -t <image_name>:<tag>` 
* Run a Container: `docker run -d --name <container_name> <image_name>:<tag>`
* List Containers: `docker ps`
* Stop a Container: `docker stop <container_name>`
* Start a Container: `docker start <container_name>`
* Remove a Container: `docker rm <container_name>`
* Remove an Image: `docker rmi <image_name>:<tag>`

Docker is a powerful platform for containerization that simplifies the process of developing, shipping, and running applications. It provides tools and services to automate the deployment of applications in lightweight, portable containers.

## Linux Containers

Linux Containers (LXC) are a type of container technology that provides an environment as close as possible to a standard Linux installation but without the need for a separate kernel. LXC uses Linux kernel features like namespaces and control groups (cgroups) to create isolated environments for running applications.

### Key Concepts

- **Namespaces**: A feature of the Linux kernel that partitions kernel resources so that one set of processes sees one set of resources while another set of processes sees a different set of resources. Namespaces provide isolation for processes, filesystems, network interfaces, and more.
- **Control Groups (cgroups)**: A feature of the Linux kernel that limits and isolates the resource usage (CPU, memory, disk I/O, etc.) of a collection of processes. cgroups ensure that containers do not consume more resources than they are allocated.
- **LXC**: A set of tools, templates, and library functions that facilitate the creation and management of containers.

### Why Use Linux Containers?

Linux Containers offer several benefits that make them a useful choice for containerization:

1. **Isolation**: Containers run in isolated environments, preventing conflicts between different applications and their dependencies.
2. **Efficiency**: Containers are lightweight and share the host system's operating system kernel, making them more efficient than virtual machines.
3. **Portability**: Containers can run on any system that supports the container runtime, making it easy to move applications between different environments.
4. **Consistency**: Ensures that the software runs the same way in development, testing, and production environments.
5. **Flexibility**: LXC provides a flexible and powerful way to create and manage containers, allowing for custom configurations and advanced use cases.

### How Linux Containers Work

1. **Creating a Container**:
   - **Install LXC**: Install the LXC tools and libraries on your system.
   - **Create a Container**: Use the `lxc-create` command to create a new container from a template.

```sh
sudo apt-get install lxc
sudo lxc-create -t download -n my-container -- --dist ubuntu --release focal --arch amd64
```

2. **Configuring a Container**

Edit Configuration: Modify the container's configuration file to set up networking, storage, and other settings.
```
sudo nano /var/lib/lxc/my-container/config
```

3. **Starting a Container** :
Start the Container: Use the lxc-start command to start the container.
```
sudo lxc-start -n my-container
```
4. **Managing a Container** :

* Attach to the Container: Use the `lxc-attach` command to attach to the container's shell.
* Stop the Container: Use the `lxc-stop` command to stop the container.
* Delete the Container: Use the `lxc-destroy` command to delete the container.

```
sudo lxc-attach -n my-container
sudo lxc-stop -n my-container
sudo lxc-destroy -n my-container
```

### Example Workflow

* Install LXC : Install the LXC tools and libraries on your system.

```
sudo apt-get install lxc
```

* Create a Container : Use the lxc-create command to create a new container from a template.
```
sudo lxc-create -t download -n my-container -- --dist ubuntu --release focal --arch amd64
```

* Configure the Container : Edit the container's configuration file to set up networking, storage, and other settings.

```
sudo nano /var/lib/lxc/my-container/config
```

* Start the Container : Use the lxc-start command to start the container.

```
sudo lxc-start -n my-container
```

* Attach to the Container : Use the lxc-attach command to attach to the container's shell.

```
sudo lxc-attach -n my-container
```

* Stop the Container : Use the lxc-stop command to stop the container.

```
sudo lxc-stop -n my-container
```

* Delete the Container : Use the lxc-destroy command to delete the container.

```
sudo lxc-destroy -n my-container
```

## Virtual Machines

### What is a Virtual Machine?

A virtual machine (VM) is a digital environment that emulates the functionality of a physical computer. VMs run on a physical host machine and can have their own operating system and applications, isolated from the host.

### Key Concepts

- **Hypervisor**: Software that creates and manages VMs. There are two types:
  - **Type 1 (Bare-Metal)**: Runs directly on the physical hardware.
  - **Type 2 (Hosted)**: Runs on top of an existing operating system.
- **Guest OS**: The operating system running inside the VM.
- **Host OS**: The operating system running on the physical machine (for Type 2 hypervisors).
- **Virtual Hardware**: Emulated hardware components provided to the VM.

### Why Use Virtual Machines?

- **Isolation**: Each VM runs in an isolated environment.
- **Resource Sharing**: Multiple VMs can run on a single physical machine.
- **Flexibility**: VMs can run different operating systems and applications.
- **Scalability**: VMs can be easily created, cloned, and scaled.
- **Portability**: VMs can be moved between different physical hosts.
- **Testing and Development**: Safe and isolated environment for testing and developing software.

### How Virtual Machines Work

1. **Install a Hypervisor**: Install a Type 1 or Type 2 hypervisor on your physical host machine.
2. **Create a Virtual Machine**: Use the hypervisor's tools to create a new VM, allocate resources, and install a guest OS.
3. **Manage the Virtual Machine**: Use the hypervisor's tools to start, stop, pause, and resume VMs, and monitor their performance.

## Containerization vs Virtual Machine

Both containerization and virtual machines (VMs) are technologies used to create isolated environments for running applications. However, they have distinct differences in terms of architecture, resource usage, and use cases. Understanding these differences can help you choose the right technology for your needs.

### Architecture

- **Virtual Machines**:
  - **Hypervisor**: VMs run on top of a hypervisor, which manages the virtual hardware and isolates the guest OS from the host OS.
  - **Guest OS**: Each VM includes a full operating system, along with the application and its dependencies.
  - **Isolation**: VMs provide strong isolation between the guest OS and the host OS, as well as between different VMs.

- **Containers**:
  - **Container Runtime**: Containers run on top of a container runtime (like Docker), which manages the container lifecycle.
  - **Shared Kernel**: Containers share the host system's operating system kernel, making them lightweight.
  - **Isolation**: Containers provide process-level isolation using namespaces and control groups (cgroups).

### Resource Usage

- **Virtual Machines**:
  - **Heavyweight**: VMs are more resource-intensive because each VM includes a full operating system.
  - **Overhead**: The hypervisor adds an additional layer of abstraction, which can introduce performance overhead.

- **Containers**:
  - **Lightweight**: Containers are more resource-efficient because they share the host system's kernel and only include the application and its dependencies.
  - **Low Overhead**: Containers have minimal performance overhead compared to VMs.

### Use Cases

- **Virtual Machines**:
  - **Isolated Environments**: Ideal for scenarios where strong isolation is required, such as running different operating systems or legacy applications.
  - **Testing and Development**: Provide a safe and isolated environment for testing and developing software.
  - **Infrastructure as Code**: Useful for creating and managing virtual infrastructure.

- **Containers**:
  - **Microservices Architecture**: Ideal for deploying microservices, where each service runs in its own container.
  - **Continuous Integration/Continuous Deployment (CI/CD)**: Containers enable consistent and reliable builds and deployments across different environments.
  - **Scalability**: Containers can be easily scaled up or down based on demand, making them suitable for modern, scalable applications.

### Comparison Table

| Feature               | Virtual Machines (VMs)                       | Containers                                  |
|-----------------------|----------------------------------------------|---------------------------------------------|
| **Architecture**      | Hypervisor, Guest OS                         | Container Runtime, Shared Kernel           |
| **Resource Usage**    | Heavyweight, High Overhead                   | Lightweight, Low Overhead                   |
| **Isolation**         | Strong, OS-level                             | Process-level, Namespaces, and cgroups      |
| **Use Cases**         | Isolated Environments, Testing, Infrastructure as Code | Microservices, CI/CD, Scalability           |
| **Startup Time**      | Slower                                       | Faster                                      |
| **Portability**       | Less portable due to OS dependencies         | Highly portable, runs on any Docker-compatible host |


Choosing between containerization and virtual machines depends on your specific needs and use cases. VMs offer strong isolation and are suitable for running different operating systems, while Docker containers are lightweight and efficient, making them ideal for modern, scalable applications.

## Popular Virtual Machine Tools

There are several popular virtual machine (VM) tools available that cater to different needs and use cases. These tools provide the necessary features to create, manage, and run virtual machines efficiently. Here are some of the most widely used VM tools:

### 1. VMware

- **Description**: VMware is a leading provider of virtualization software. It offers a range of products for both enterprise and personal use.
- **Key Features**:
  - **VMware Workstation**: A Type 2 hypervisor for running multiple operating systems on a single physical machine.
  - **VMware ESXi**: A Type 1 hypervisor for enterprise-level virtualization.
  - **VMware vSphere**: A comprehensive suite for managing virtualized data centers.
- **Use Cases**: Enterprise virtualization, desktop virtualization, cloud computing.

### 2. Oracle VirtualBox

- **Description**: VirtualBox is an open-source Type 2 hypervisor developed by Oracle. It is widely used for desktop virtualization.
- **Key Features**:
  - **Cross-Platform**: Supports Windows, macOS, Linux, and Solaris.
  - **Guest Additions**: Enhances the performance and usability of guest operating systems.
  - **Snapshots**: Allows you to save the state of a VM and revert to it later.
- **Use Cases**: Desktop virtualization, testing and development, education.

### 3. Microsoft Hyper-V

- **Description**: Hyper-V is a Type 1 hypervisor developed by Microsoft. It is integrated into Windows Server and some versions of Windows 10.
- **Key Features**:
  - **Integration with Windows**: Seamless integration with Windows Server and Windows 10.
  - **Live Migration**: Allows you to move running VMs from one host to another without downtime.
  - **Replica**: Provides disaster recovery by replicating VMs to a secondary site.
- **Use Cases**: Enterprise virtualization, cloud computing, disaster recovery.

### 4. Parallels Desktop

- **Description**: Parallels Desktop is a Type 2 hypervisor designed for macOS. It allows you to run Windows and other operating systems on a Mac.
- **Key Features**:
  - **Seamless Integration**: Runs Windows applications alongside macOS applications.
  - **Coherence Mode**: Allows Windows applications to run as if they were native macOS applications.
  - **Performance**: Optimized for performance on macOS.
- **Use Cases**: Running Windows on macOS, testing and development, education.

### 5. KVM (Kernel-based Virtual Machine)

- **Description**: KVM is a Type 1 hypervisor integrated into the Linux kernel. It is widely used for server virtualization.
- **Key Features**:
  - **Open Source**: Part of the Linux kernel, making it freely available.
  - **Performance**: High performance due to its integration with the Linux kernel.
  - **Management Tools**: Supports various management tools like libvirt, virt-manager, and OpenStack.
- **Use Cases**: Server virtualization, cloud computing, data center management.

These popular virtual machine tools provide a range of features and capabilities to meet different virtualization needs. Whether you are looking for enterprise-level virtualization, desktop virtualization, or cloud computing solutions, there is a VM tool that can meet your requirements.

## Container Orchestration

## What is Container Orchestration?

Container orchestration is the automated management of containerized applications. It involves the deployment, scaling, and operation of containers across multiple hosts. Orchestration tools help ensure that applications run reliably and efficiently, even as the number of containers and the complexity of the environment grow.

### Key Concepts

- **Deployment**: The process of launching and managing containers across a cluster of nodes.
- **Scaling**: Automatically adjusting the number of container instances based on demand.
- **Load Balancing**: Distributing network traffic across multiple containers to ensure stability and reliability.
- **Service Discovery**: Automatically detecting and registering services provided by containers.
- **Self-Healing**: Automatically recovering from failures by restarting or replacing containers.
- **Resource Management**: Efficiently allocating and managing resources like CPU, memory, and storage across the cluster.

### Why Use Container Orchestration?

Container orchestration offers several benefits that make it essential for managing containerized applications at scale:

1. **Scalability**: Automatically scales applications up or down based on demand.
2. **High Availability**: Ensures that applications are always available by managing failover and recovery.
3. **Efficiency**: Optimizes resource usage and allocation across the cluster.
4. **Automation**: Automates the deployment, scaling, and management of containers, reducing manual intervention.
5. **Consistency**: Ensures that applications run consistently across different environments.
6. **Resilience**: Provides mechanisms for automatic recovery from failures.

### How Container Orchestration Works

1. **Cluster Management**:
   - **Cluster**: A group of nodes (physical or virtual machines) that run containerized applications.
   - **Master Node**: Manages the cluster and controls the state of the cluster.
   - **Worker Nodes**: Run the containerized applications.

2. **Scheduling**:
   - **Scheduler**: Decides which node should run a particular container based on resource availability and other constraints.

3. **Service Management**:
   - **Service**: An abstraction that defines a logical set of containers and a policy by which to access them.
   - **Load Balancer**: Distributes network traffic across multiple containers.

4. **Health Monitoring**:
   - **Health Checks**: Regularly checks the status of containers to ensure they are running correctly.
   - **Self-Healing**: Automatically restarts or replaces failed containers.

5. **Resource Allocation**:
   - **Resource Quotas**: Limits the amount of resources (CPU, memory, etc.) that a container can use.
   - **Resource Requests**: Specifies the minimum amount of resources a container needs.

### Popular Container Orchestration Tools

- **Kubernetes**: An open-source platform for automating the deployment, scaling, and management of containerized applications.
- **Docker Swarm**: A native clustering and orchestration tool for Docker containers.
- **Amazon ECS (Elastic Container Service)**: A fully managed container orchestration service provided by AWS.
- **Apache Mesos**: A distributed systems kernel that provides resource management and scheduling across a cluster.

## Kubernetes

Kubernetes (often abbreviated as K8s) is an open-source platform designed to automate the deployment, scaling, and management of containerized applications. It provides a robust framework for container orchestration, making it easier to manage large-scale containerized applications across multiple hosts.

### Key Concepts

- **Cluster**: A set of nodes (machines) that run containerized applications managed by Kubernetes.
- **Node**: A physical or virtual machine that runs Kubernetes and hosts containers.
- **Pod**: The smallest deployable unit in Kubernetes, representing a single instance of a running process in your cluster.
- **Service**: An abstraction that defines a logical set of pods and a policy by which to access them.
- **Deployment**: A controller that manages the lifecycle of pods, ensuring the desired state is maintained.
- **ReplicaSet**: Ensures a specified number of pod replicas are running at any given time.
- **Namespace**: A way to divide cluster resources between multiple users or teams.

### Why Use Kubernetes?

Kubernetes offers several benefits that make it a popular choice for container orchestration:

1. **Scalability**: Automatically scales applications up or down based on demand.
2. **High Availability**: Ensures that applications are always available by managing failover and recovery.
3. **Load Balancing**: Distributes network traffic to maintain stability and reliability.
4. **Automated Rollouts and Rollbacks**: Automates the deployment and rollback of application updates.
5. **Service Discovery and Self-Healing**: Automatically detects and recovers from failures, ensuring continuous operation.
6. **Resource Management**: Efficiently manages and allocates resources across the cluster.

### How Kubernetes Works

1. **Cluster Architecture**:
   - **Master Node**: Manages the cluster and controls the state of the cluster.
   - **Worker Nodes**: Run the containerized applications.

2. **Components**:
   - **kube-apiserver**: The API server that exposes the Kubernetes API.
   - **etcd**: A key-value store used to store all cluster data.
   - **kube-scheduler**: Schedules pods to run on nodes.
   - **kube-controller-manager**: Runs controller processes.
   - **kubelet**: An agent that runs on each node and manages the container runtime.
   - **kube-proxy**: Maintains network rules on nodes.

3. **Deploying an Application**:
   - **Create a Deployment**: Define the desired state of your application using a YAML file.
   - **Apply the Deployment**: Use the `kubectl` command to apply the deployment to the cluster.

```yaml
# Example Deployment YAML
apiVersion: apps/v1
kind: Deployment
metadata:
  name: my-app-deployment
spec:
  replicas: 3
  selector:
    matchLabels:
      app: my-app
  template:
    metadata:
      labels:
        app: my-app
    spec:
      containers:
      - name: my-app-container
        image: my-app:latest
        ports:
        - containerPort: 80

kubectl apply -f deployment.yaml
```
### Exposing a Service:

* Create a Service: Define a service to expose your application.
* Apply the Service: Use the kubectl command to apply the service to the cluster.

```
# Example Service YAML
apiVersion: v1
kind: Service
metadata:
  name: my-app-service
spec:
  selector:
    app: my-app
  ports:
    - protocol: TCP
      port: 80
      targetPort: 80
  type: LoadBalancer

kubectl apply -f service.yaml
```

### Kubernetes Commands

Create a Deployment: kubectl apply -f <deployment.yaml>
Create a Service: kubectl apply -f <service.yaml>
Get Pods: kubectl get pods
Get Services: kubectl get services
Describe a Pod: kubectl describe pod <pod_name>
Scale a Deployment: kubectl scale deployment <deployment_name> --replicas=<number>
Delete a Deployment: kubectl delete deployment <deployment_name>
Delete a Service: kubectl delete service <service_name>

<br>

Kubernetes is a powerful platform for container orchestration that automates the deployment, scaling, and management of containerized applications. It provides a robust framework for managing large-scale containerized applications across multiple hosts.
