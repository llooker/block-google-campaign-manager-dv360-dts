include: "//@{CONFIG_PROJECT_NAME}/explores/dv360/impression_funnel_dv360.explore"

explore: impression_funnel_dv360 {
  extends: [impression_funnel_dv360_config]
}


explore: impression_funnel_dv360_core {
  view_name: impression_funnel_dv360
  extension: required
  view_label: "DV360 Events"
  label: "(2.5) Impression Funnel DV360"
  description: "Use this funnel explore for a more granular view at cost and impression metrics for DV360 campaigns"
  join: dynamic_io_rank {
    type: left_outer
    relationship: many_to_one
    sql_on: ${impression_funnel_dv360.dbm_insertion_order_id} = ${dynamic_io_rank.dbm_insertion_order_id} ;;
  }

  join: campaign_facts {
    type: left_outer
    relationship: many_to_one
    sql_on: ${impression_funnel_dv360.campaign_id} = ${campaign_facts.campaign_id} ;;
  }

  join: io_facts {
    type: left_outer
    relationship: many_to_one
    sql_on: ${impression_funnel_dv360.dbm_insertion_order_id} = ${io_facts.dbm_insertion_order_id} ;;
  }

  join: line_item_facts {
    type: left_outer
    relationship: many_to_one
    sql_on: ${impression_funnel_dv360.dbm_line_item_id} = ${line_item_facts.dbm_line_item_id} ;;
  }

  join: dbm_matching_targeted_segments_array {
    view_label: "DV360 Events"
    sql: LEFT JOIN UNNEST(${impression_funnel_dv360.dbm_matching_targeted_segments_array}) as dbm_matching_targeted_segments_array ;;
    relationship: one_to_many
  }
  join: clustering_dataset {
    type: left_outer
    relationship: many_to_one
    sql_on: ${impression_funnel_dv360.campaign_id} = ${clustering_dataset.campaign_id} ;;
  }
  join: cluster_predict {
    type: left_outer
    relationship: one_to_one
    sql_on: ${clustering_dataset.row_num} = ${cluster_predict.row_num} ;;
  }
}
