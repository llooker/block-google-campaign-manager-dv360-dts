project_name: "block-google-campaign-manager-dv360-dts"

constant: CONFIG_PROJECT_NAME {
  value: "cm-block-config"
  export: override_required
}
constant: CONNECTION_NAME {
  value: "your_bq_connection_name"
  export: override_required
}
constant: PROJECT_NAME {
  value: "your_bq_project_name"
  export: override_optional
}
constant: DATASET_NAME {
  value: "your_bq_campaign_manager_dataset"
  export: override_optional
}
constant: CAMPAIGN_MANAGER_ID {
  value: "your_campaign_manager_id"
  export: override_optional
}

constant: DV360_PARTNER_ID {
  ## This is used for links
  value: ""
}
constant: MINIMUM_SPEND_CLUSTER {
  value: ">0"
  export: override_optional
}
constant: NUMBER_OF_CLUSTERS {
  ### This is where you can decide number of clusters for BQML. Default is 3
  value: "3"
  export: override_optional
}
constant: HISTORICAL_DATA_DV360 {
  ### This is where you can decide how much data to feed into the dashboards. By default, it is 60 days
  value: "60"
  export: override_optional
}
constant: MINIMUM_CONVERSIONS_CLUSTER {
  ### This is where you can decide minimum number of conversions (exclusive) for campaigns to include in clustering model. Default is 0, so all campaigns with conversions >0
  ## To include all, make value: ""
  value: ">0"
}




local_dependency: {
  project: "@{CONFIG_PROJECT_NAME}"
}
