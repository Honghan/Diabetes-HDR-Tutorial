# Health Data Research Tutorial - a case study in Diabetes
# 健康数据分析课程 - 关于糖尿病的案例研究
This repository includes all the materials you need for a hands-on [Common Data Model](https://www.ohdsi.org/data-standardization/the-common-data-model/) tutorial using a synthetic 1,000 patient records.

该存储库包含用于通用数据模型教程的所有材料。在该课程中，我们使用1000个病人的假数据。

In this tutorial, you will learn the basics of OMOP Common Data Model and multiple standardised terminologies (ICD-10, BNF). You will go through the pipeline of mapping structured data to a Common Data Model and have an experience of carrying out phenotype computation.

在该课程中，你会学习到关于OMOP通用数据模型的基础知识以及几种标准化术语（比如ICD-10和BNF）。你将体验将结构化数据映射到通用数据模型的过程，并且了解如何进行表型计算。

## Objectives
## 课程目标
- common data model (OMOP)
- clinical terminologies (ICD-10, Drug standards: BNF)
- phenotype computation (R and SQL)
- R tutorial
- 通用数据模型（OMOP）
- 临床术语（ICD-10，药物标准：BNF）
- 表型计算（R和SQL）
- R的基础课程

## Environment setup
## 环境设置
### Download the zip file from this Github repository
### 下载此Github存储库的zip包
Please download all files from this repository

<img src = "pics/fig1_download.PNG" width = 300>

and save (unzip) them to your working directory (e.g. **C:\Users\your_account_name\Diabetes-HDR-Tutorial-main**).

请下载并存储且解压此存储库的所有文件（比如存于C盘用户名下C:\Users\your_account_name\Diabetes-HDR-Tutorial-main）。

Then you will get a folder looks like this:

<img src = "pics/fig2_files.PNG" width = 500>

This repository includes the files you need for this tutorial

此存储库包含以下文件

- **summary.docx** provides a brief summary and background information of this tutorial. *Please go through this document before the tutorial.*
此文件提供了此课程的总结及背景介绍。*请在开始课程前浏览此文件*
- **docker-compose.yml** is the docker compose file you need for setting up the environment. Further instructions will be provided below.
你将需要此docker compose文件来设置课程所需要的环境。下面会提供详细的说明。
- **Dockerfile** the file used for setting up the environment.
- **tutorial_data.tar.gz** wrapped up the files you need for the database.
此压缩包包含了数据库的数据及信息。
- **notebooks** includes the R scripts of this tutorial.
文件夹包含了此课程所用的R脚本。
- **raw_data.zip** includes the raw data (synthetic data) we used for this tutorial.
此压缩包包含了课程所用的原始数据。

### Install Docker
### 安装Docker
In order to get the environment you need for this tutorial, please download and install Docker according to your operating system from [here](https://docs.docker.com/get-docker/).

为了获得此课程所需的环境，请根据你的操作系统从[这里](https://docs.docker.com/get-docker/)下载并安装Docker。

### Run docker-compose file
### 运行docker-compose文件
- Make sure Docker is running.
- Open the Terminal (Command Prompt).
- Change the working directory to the path holds the files you downloaded. (e.g.`C:/Users/your_account`)
- Pull the image for Jupyter by run: `docker pull jupyter/datascience-notebook` (It might take a while)
- Pull the image for Postgres by run: `docker pull postgres`
- Edit the path in file *docker-compose.yml*

`    volumes:
     - /home/${USER}/notebooks:/home/jovyan/work`

`    volumes:
     - /home/${USER}/tutorial_data:/var/lib/postgresql/data/`

Change the path before the colon to your working directory.
- Run the compose file by:

`docker-compose up -d --build`
- Open the browser and open `http://localhost:8899`. The token is `tutorial`. Then you should be able to open the jupyter notebooks in the folder *notebooks*.
Now you should be able to go through the R files by running each code cell. *Please note you need to install the packages before loading them.*
- To close the containers and remove the network, stop the compose by:

`docker-compose down`

### Optional: don't wanna install those R packages everytime?
You can save a Docker image after installing the packages by:

`docker commit CONTAINER IMAGE:TAG`

Edit Container, image, and tag.

You can check the running Docker containers by

`docker ps`

You can list the Docker images by

`docker images`

### Optional: pgadmin for checking the database
You can download *PGAdmin* to have a look of the database from [here](https://www.pgadmin.org/download/). After installing, you can create a new server by this setting (make sure you run the docker-compose file first):
- host: localhost
- port: 5434
- username: postgres
- password: tutorial

Then you should be able to connect to the database we use for this tutorial.

### Optional: Rstudio for R
