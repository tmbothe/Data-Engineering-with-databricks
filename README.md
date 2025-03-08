# Data-Engineering-with-databricks and dbt

<b>dbt</b> (data build tool) is an open source tool that helps professional analytics engineers automate the application of powerful and proven patterns to transform data from ingestion to delivery, enabling real DataOps. It uses only SQL based transformation.

Databricks Platform offers a variety of languages to perform data engineering tasks. For people working on SQL projects, dbt offers a good alternative to transform data inside their data platform. It provides a framework for writing and organazing SQL queries, version-controlling them, and running then in a consistent, repeatable manner. 

dbt is not a data  extraction tool, but works with data already loaded into a data platform, transforming it into meaninful tables that analysts can use.

## What is this project about?

This is an end to end project, that will help us go over the different aspect of <b>dbt - databricks</b> integration, following a medallion architecture.

![image](https://github.com/tmbothe/Data-Engineering-with-databricks/blob/main/images/dbt_project.jpg)

As we can see on the image above, the whole pipeline is typical Data engineering project that:
* Data coming from external sources is loaded into a **landing zone** in  Azure blob storage
* Then we will read data as is from the landing zone to the **bronze zone** with with a container in Azure
* After performing transformations and cleaning we will store the clean data into the **Silver zone**
* We will finally perform some aggrations and store the final data in the **gold zone** ready for reporting.
* All data and access to the databricks platform will be managed by the Unity catalog.

## Steps to follow
1- Have or creatre an Azure account. Follow steps ![here](https://learn.microsoft.com/en-us/azure/databricks/scenarios/quickstart-create-databricks-workspace-vnet-injection)
2- Create a databricks workspace and be admin to perform all tasks
3- Install and configure dbt cloud. Follow steps ![here](https://docs.databricks.com/aws/en/partners/prep/dbt-cloud)

## Datasets

The dataset we are going to be using is a collections of roads and traffic data that can be find on kaggle. It is basically the count of the number of vehicles that were collected at a given location at a specific time. : these vehicles are:
* Pedal cycle
* Two wheeler motor vehicles
* Buses amd coaches
* LVG (Large goods vehicle)
* HGV (Heavy Goods Vehicle)
* Electric vehicles

Here is the over all structure of the data.

![image](https://github.com/tmbothe/Data-Engineering-with-databricks/blob/main/images/schema.jpg)

**Build effective data and AI solutions using Apache Spark, Databricks, and Delta Lake**

## What is this book about?
This book shows you how to use Apache Spark, Delta Lake, and Databricks to build data pipelines, manage and transform data, optimize performance, and more. Additionally, you’ll implement DataOps and DevOps practices, and orchestrate data workflows.

This book covers the following exciting features:
* Perform data loading, ingestion, and processing with Apache Spark
* Discover data transformation techniques and custom user-defined functions (UDFs) in Apache Spark
* Manage and optimize Delta tables with Apache Spark and Delta Lake APIs
* Use Spark Structured Streaming for real-time data processing
* Optimize Apache Spark application and Delta table query performance
* Implement DataOps and DevOps practices on Databricks
* Orchestrate data pipelines with Delta Live Tables and Databricks Workflows
* Implement data governance policies with Unity Catalog

If you feel this book is for you, get your [copy](https://www.amazon.com/Engineering-Apache-Spark-Delta-Cookbook/dp/1837633355) today!

<a href="https://www.packtpub.com/?utm_source=github&utm_medium=banner&utm_campaign=GitHubBanner"><img src="https://raw.githubusercontent.com/PacktPublishing/GitHub/master/GitHub.png" 
alt="https://www.packtpub.com/" border="5" /></a>

## Instructions and Navigations
All of the code is organized into folders. For example, Chapter01.

The code will look like the following:
```
from pyspark.sql import SparkSession

spark = (SparkSession.builder
 .appName("read-csv-data")
 .master(«spark://spark-master:7077»)
 .config(«spark.executor.memory", "512m")
 .getOrCreate())

spark.sparkContext.setLogLevel("ERROR")
```

**Following is what you need for this book:**
This book is for data engineers, data scientists, and data practitioners who want to learn how to build efficient and scalable data pipelines using Apache Spark, Delta Lake, and Databricks. To get the most out of this book, you should have basic knowledge of data architecture, SQL, and Python programming.

With the following software and hardware list you can run all code files present in the book (Chapter 1-11).
### Software and Hardware List
| Chapter | Software required | OS required |
| -------- | ------------------------------------ | ----------------------------------- |
| 1-11 | Docker Engine version 18.02.0+ | Windows, Mac OS X, and Linux (any) |
| 1-11 | Docker Compose version 1.25.5+ | Windows, Mac OS X, and Linux (any) |
| 1-11 | Docker Desktop                 | Windows, Mac OS X, and Linux (any) |
| 1-11 | Git                            | Windows, Mac OS X, and Linux (any) |

### Related products
* Business Intelligence with Databricks SQL [[Packt]](https://www.packtpub.com/product/business-intelligence-with-databricks-sql/9781803235332) [[Amazon]](https://www.amazon.com/Business-Intelligence-Databricks-SQL-intelligence/dp/1803235330/ref=sr_1_1?crid=1QYCAOZP9E3NH&dib=eyJ2IjoiMSJ9.nKZ7dRFPdDZyRvWwKM_NiTSZyweCLZ8g9JdktemcYzaWNiGWg9PuoxY2yb2jogGyK8hgRliKebDQfdHu2rRnTZTWZbsWOJAN33k65RFkAgdFX-csS8HgTFfjZj-SFKLpp4FC6LHwQvWr9Nq6f5x6eg.jh99qre-Hl4OHA9rypXLmSGsQp4exBvaZ2xUOPDQ0mM&dib_tag=se&keywords=Business+Intelligence+with+Databricks+SQL&qid=1718173191&s=books&sprefix=business+intelligence+with+databricks+sql%2Cstripbooks-intl-ship%2C553&sr=1-1)

* Optimizing Databricks Workloads [[Packt]](https://www.packtpub.com/product/optimizing-databricks-workloads/9781801819077) [[Amazon]](https://www.amazon.com/Optimizing-Databricks-Workloads-performance-workloads/dp/1801819076/ref=tmm_pap_swatch_0?_encoding=UTF8&dib_tag=se&dib=eyJ2IjoiMSJ9.cskfrEglx5gEbJF-FnhxlA.rCtKm1bO6Fi1mXUpq1Oai0kjAhGseGT2cCZ2Ccgxaak&qid=1718173341&sr=1-1)

## Get to Know the Author
**Pulkit Chadha**
 is a seasoned technologist with over 15 years of experience in data engineering. His proficiency in crafting and refining data pipelines has been instrumental in driving success across diverse sectors such as healthcare, media and entertainment, hi-tech, and manufacturing. Pulkit’s tailored data engineering solutions are designed to address the unique challenges and aspirations of each enterprise he collaborates with.
