# Campaign Manager & DV360 Block

<br>

### Why use the Looker Campaign Manager & DV360 Block?
**(1) Rapid Time To Value** - gain insights from your CM and DV360 data in minutes, not weeks. The Campaign Manager & DV360 Block includes pre-built dashboards and content focusing on the ad management system for advertisers and agencies, with analysis around campaign performance, reach and impressions. Additionally, dashboards have been developed to answer the most asked questions around Campaign Manager and DV360.

**(2) Centralized Place for Analysis** -  No Campaign Manager or DV360 access required to do self-service reporting. Plus, you can combine your Campaign Manager and DV360 data with other data in your warehouse (e.g. Bitbucket or Github commits) for end-to-end analysis.

**(3) Enterprise Data Platform** - Your marketing team can easily build their own dashboards, and any user is equipped to ask and answer their own questions, save and share their own reports. Additionally, you can take advantage of Looker's advanced scheduling functionality to get Alerts whenever workflows are disrupted. Using our Data Health Check dashboard within the block you can monitor redacted User IDs within Campaign Manager.

**(4) Take Action on Your Data Quickly**  - Analysts can jump into the DV360 dashboards and clearly see performance trends by toggling between different performance KPIs and viewing attribute breakdowns. From the dashboard, directly link to the specific campaign, IO, or line item in the DV360 console and adjust bid and budget strategies.

<br>

### Campaign Manager Data Structure and Schema

Campaign Manager data is exported through [Transfer Services](https://cloud.google.com/bigquery-transfer/docs/doubleclick-campaign-transfer) in the format of three flat tables (a single file for impressions, clicks, and activities). All Data Transfer Files are stored as comma separated values (CSV).

Filenames are a combination of dcm ID (like account, or floodlight), data transfer type (impression, click, activity, or rich_media), the date and hour of the processed file (YYYYMMDDHH), the day the report was generated (YYYYMMDD), the time the report was generated (HHMMSS), and the execution ID of the report separated by underscores. A more detailed description of the Data Transfer customisation and fields can be found [here](https://developers.google.com/doubleclick-advertisers/dtv2/reference/file-format).

It is strongly recommended that you load all match tables into your warehouse to allow your business users to gain a deeper understanding into the naming conventions of your campaigns, activities, ads, advertisers, assets, and browsers. More information on all Data Transfer match tables can also be found [here](https://developers.google.com/doubleclick-advertisers/dtv2/reference/match-tables).

<br>

### DV360 Data Structure and Schema

Please Note: Version 1 of this block was released without references to DV360-specific match-files because they are not available from DTS. In order to incorporate data from match files, including campaign metadata, inventory look-up tables, etc., please work with your GMP and Looker account teams. We are investigating options for getting DV360 match files into BQ in a consistent format and will release an updated version of the block when we do.

Some visualizations in the DV360 dashboards are dependent on Contribution To Performance. This metric is determined by calculating the KPI selected under Metric Selector if the attibute you're looking at (IO, Exchange, Site, etc.) was never included in the campaign, insertion order, or line item. The percent change between the actual KPI value and the KPI value without that attribute is then calculated to determine the increase or decrease in performance that attribute is resposible.

<br>

<!--### Campaign Manager Block Structure-->

<!--Insert overview of block structure here.-->

<!--<br>-->

### Customizations
Campaign Manager:
 * Within the ```Top Performers & Breakdowns``` dashboard there are three breakdown tiles that are configurable. It is recommended to import this dashboard and edit these tiles to create custom classifications based on placement name or campaign tactic. Once configured, you  can drill into these metrics to get an additional level of granularity into underlying factors.

DV360:
* You can update the constants in the manifest file to change the size of the data (default is last 60 days), as well as change the criteria for campaigns to be included in the clustering model (see section below)

<br>

### BQML
 *DV360
- What is BQML?
    - [BigQuery ML](https://cloud.google.com/bigquery-ml/docs) enables data scientists and data analysts to build and operationalize ML models on planet-scale structured or semi-structured data, directly inside BigQuery, using simple SQL—in a fraction of the time.

- What is Clustering?
    - Clustering is a machine-learning technique that groups together datapoints into clusters such that the datapoints within any one cluster are more similar to one another than they are to datapoints in any other cluster. For more information on clustering, please see [this article](https://www.geeksforgeeks.org/clustering-in-machine-learning/):

- Overview of our cluster model
    - For our block, we are using a k-means clustering model within BQML to group together campaigns based on the campaign spend as well as the number of impressions, clicks, and conversion

- How to modify the cluster model
    - The variables included in the model are defined within the clustering_dataset native derived tables. To remove any of the included variables, just delete that column from the native derived table. To include any additional variables, just add that column or derived column to the native derived tables definition. For more information on declaring columns in a native derived table, please see [this page](https://docs.looker.com/data-modeling/learning-lookml/creating-ndts#defining_ndt_columns).
To change the number of clusters, change the constant in the manifest file.

- Output of Model
    - After the model successfully completes, each campaign will be assigned to the cluster, or centroid, that it belongs to. This cluster will then be available as a dimension, so we can identify the cluster that performs best and use it to filter down other dashboards and reports to gain insight into the trends that made those campaigns successful.



### What if I find an error? Suggestions for improvements?

Great! Blocks were designed for continuous improvement through the help of the entire Looker community, and we'd love your input. To log an error or improvement recommendations, simply create a "New Issue" in the corresponding [Github repo for this Block](https://github.com/llooker/google_ga360/issues). Please be as detailed as possible in your explanation, and we'll address it as quick as we can.
