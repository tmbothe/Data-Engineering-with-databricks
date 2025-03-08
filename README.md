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
*  Have or creatre an Azure account. Follow steps [click here](https://learn.microsoft.com/en-us/azure/databricks/scenarios/quickstart-create-databricks-workspace-vnet-injection)
*  Create a databricks workspace and be admin to perform all tasks
*  Install and configure dbt cloud. Follow steps [click here](https://docs.databricks.com/aws/en/partners/prep/dbt-cloud)

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

## Project Implementation 
 As mentioned ealier, we are going to be using the medallion architecture for this project. We are going to build model for each step in the process.

![image](https://github.com/tmbothe/Data-Engineering-with-databricks/blob/main/images/initial_project.jpg)

Our project catalog in databricks is called **dbt_project_catalog**. As we can see on the image above, it currently has only the data from our landing zone. We are going to start adding the other layers through dbt models.

### dbt models
In dbt, models are only transformation applied to the data. It is a combination of select statement added to a file that get materialized to the target system as a table or view.

#### project configuration 
Before creating the different layers, one key file for any dbt project id the **dbt_project.yml** which define how all the objects in our different layers are going to be materialized. Below is a snapshot of our project configuration. As we can see, all our ojects will be materialized as tables.
```
models:
  dbt_project_catalog:
    bronze:
      +materialized: table
      +schema: bronze
    silver:
      +materialized: table
      +schema: silver
    gold:
      +materialized: table
      +schema: gold
``` 
#### Data sources
The data sources defines where the data is originated.  We will define two data sources that represent the two tables in our landing zone.

#### Data layers
The code for different layer can be found in the project under **models**, but below is the final structure in dbt.


![image](https://github.com/tmbothe/Data-Engineering-with-databricks/blob/main/images/project_structure_in_dbt.jpg)
