include: "//@{CONFIG_PROJECT_NAME}/views/dv360/*"

view: dynamic_io_rank {
  extends: [dynamic_io_rank_config]
}

# If necessary, uncomment the line below to include explore_source.
# include: "block_dv360_v2.model.lkml"
view: dynamic_io_rank_core {
  extension: required
  derived_table: {
    explore_source: impression_funnel_dv360 {
      column: dbm_insertion_order_id { field: impression_funnel_dv360.dbm_insertion_order_id }
      # column: dynamic_measure { field: impression_funnel_dv360.dynamic_measure }
      column: dbm_revenue {field: impression_funnel_dv360.dbm_revenue}
      column: dynamic_measure_for_ranking_io_contribution_to_performance { field: impression_funnel_dv360.dynamic_measure_for_ranking_io_contribution_to_performance }
      # derived_column: rank {
      #   sql: ROW_NUMBER() OVER(order by dynamic_measure
      #             {% if impression_funnel_dv360.metric_selector._parameter_value == "'Cost Per Acquisition'" %} desc
      #               {% elsif impression_funnel_dv360.metric_selector._parameter_value == "'Cost Per Click'" %} desc
      #                 {% elsif impression_funnel_dv360.metric_selector._parameter_value == "'Click Through Rate'" %} asc
      #                 {% elsif impression_funnel_dv360.metric_selector._parameter_value == "'Cost Per 1000 Impressions'" %} desc
      #                 {% elsif impression_funnel_dv360.metric_selector._parameter_value == "'Conversion Rate'" %} asc
      #                 {% elsif impression_funnel_dv360.metric_selector._parameter_value == "'Viewable Impression Rate'" %} asc
      #                 {% elsif impression_funnel_dv360.metric_selector._parameter_value == "'Measureable Impression Rate'" %} asc
      #                 {% else %} desc
      #               {% endif %}
      #               ) ;;
      # }
      derived_column: rank {
        sql: ROW_NUMBER() OVER(order by dynamic_measure_for_ranking_io_contribution_to_performance
                  {% if impression_funnel_dv360.metric_selector._parameter_value == "'Cost Per Acquisition'" %} asc
                    {% elsif impression_funnel_dv360.metric_selector._parameter_value == "'Cost Per Click'" %} asc
                      {% elsif impression_funnel_dv360.metric_selector._parameter_value == "'Click Through Rate'" %} desc
                      {% elsif impression_funnel_dv360.metric_selector._parameter_value == "'Cost Per 1000 Impressions'" %} asc
                      {% elsif impression_funnel_dv360.metric_selector._parameter_value == "'Conversion Rate'" %} desc
                      {% elsif impression_funnel_dv360.metric_selector._parameter_value == "'Viewable Impression Rate'" %} asc
                      {% elsif impression_funnel_dv360.metric_selector._parameter_value == "'Measureable Impression Rate'" %} asc
                      {% else %} asc
                    {% endif %}, dbm_revenue desc
                    ) ;;
      }
      bind_all_filters: yes
      filters: [
        io_facts.dbm_revenue: ">0", io_facts.dynamic_filter: ">0"
      ]
    }
  }
  dimension: dbm_insertion_order_id {
    type: number
    hidden: yes
  }
  dimension: dynamic_measure {
    label: "Impressions Dynamic Measure"
    value_format: "#,##0.00"
    type: number
    hidden: yes
  }

  dimension: rank {
    hidden: yes
    type: number
    sql: ${TABLE}.rank ;;
  }

  filter: rank_input {
    hidden: yes
    type: number
  }
  dimension: rank_comparitor {
    hidden: yes
    type: string
    sql: CASE WHEN  ${rank} = 1 then CONCAT('1. ',CAST(${impression_funnel_dv360.dbm_insertion_order_id} as string))
          WHEN  ${rank} = 2 then CONCAT('2. ',CAST(${impression_funnel_dv360.dbm_insertion_order_id} as string))
          WHEN  ${rank} = 3 then CONCAT('3. ',CAST(${impression_funnel_dv360.dbm_insertion_order_id} as string))
          ELSE 'Rest of Insertion Orders' END;;
  }
}

# If necessary, uncomment the line below to include explore_source.
# include: "campaign_manager.model.lkml"

view: campaign_facts {
  derived_table: {
    explore_source: impression_funnel_dv360 {
      column: campaign_id {}
      column: dbm_revenue {}
      column: total_impressions {}
      column: total_clicks {}
      column: total_conversions {}
      bind_all_filters: yes
    }
  }
  dimension: campaign_id {
    primary_key: yes
    hidden: yes
    label: "Campaigns Campaign ID"
  }
  measure: dbm_revenue {
    hidden: yes
    type: sum
  }
  measure: total_impressions {
    hidden: yes
    type: sum
  }
  measure: total_clicks {
    hidden: yes
    type: sum
  }
  measure: total_conversions {
    hidden: yes
    type: sum
  }
}

# If necessary, uncomment the line below to include explore_source.
# include: "campaign_manager.model.lkml"

view: io_facts {
  derived_table: {
    explore_source: impression_funnel_dv360 {
      column: dbm_revenue {}
      column: total_impressions {}
      column: total_clicks {}
      column: total_conversions {}
      column: dbm_insertion_order_id {}
      bind_all_filters: yes
    }
  }
  dimension: dbm_insertion_order_id {
    primary_key: yes
    hidden: yes
    type: number
  }
  measure: dbm_revenue {
#     hidden: yes
  type: sum
}
measure: total_impressions {
  hidden: yes
  type: sum
}
measure: total_clicks {
  hidden: yes
  type: sum
}
measure: total_conversions {
  hidden: yes
  type: sum
}

dimension: dbm_revenue_d {
  #     hidden: yes
  type: number
  sql: ${TABLE}.dbm_revenue ;;
}
dimension: total_impressions_d {
  #     hidden: yes
  type: number
  sql: ${TABLE}.total_impressions ;;
}
dimension: total_clicks_d {
  #     hidden: yes
  type: number
  sql: ${TABLE}.total_clicks ;;
}
dimension: total_conversions_d {
  #     hidden: yes
  type: number
  sql: ${TABLE}.total_conversions ;;
}

dimension: dynamic_filter {
  #     hidden: yes
  type: number
  sql: {% if impression_funnel_dv360.metric_selector._parameter_value == "'Cost Per Acquisition'" %} ${total_conversions_d}
                      {% elsif impression_funnel_dv360.metric_selector._parameter_value == "'Cost Per Click'" %} ${total_clicks_d}
                        {% elsif impression_funnel_dv360.metric_selector._parameter_value == "'Click Through Rate'" %} ${total_clicks_d}
                        {% elsif impression_funnel_dv360.metric_selector._parameter_value == "'Cost Per 1000 Impressions'" %} ${total_impressions_d}
                        {% elsif impression_funnel_dv360.metric_selector._parameter_value == "'Conversion Rate'" %} ${total_conversions_d}

                        {% else %}1{%endif%} ;;
}
}

# If necessary, uncomment the line below to include explore_source.
# include: "campaign_manager.model.lkml"

view: line_item_facts {
  derived_table: {
    explore_source: impression_funnel_dv360 {
      column: dbm_revenue {}
      column: total_impressions {}
      column: total_clicks {}
      column: total_conversions {}
      column: dbm_line_item_id {}
      bind_all_filters: yes
    }
  }
  dimension: dbm_line_item_id {
    primary_key: yes
    hidden: yes
    type: number
  }
  measure: dbm_revenue {
    hidden: yes
    type: sum
  }
  measure: total_impressions {
    hidden: yes
    type: sum
  }
  measure: total_clicks {
    hidden: yes
    type: sum
  }
  measure: total_conversions {
    hidden: yes
    type: sum
  }
}
