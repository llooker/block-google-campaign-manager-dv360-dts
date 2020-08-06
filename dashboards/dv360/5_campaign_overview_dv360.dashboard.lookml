- dashboard: campaign_overview__dv360
  title: "(1) Campaign Overview - DV360"
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - name: <font color="#34A853" size="45" weight="bold"><i class="fa fa-tachometer"
      aria-hidden="true"></i><strong> DV360 Insights </strong> <font color= "#4285F4"size="45">
      Campaign Overview </font>
    type: text
    title_text: <font color="#34A853" size="4.5" weight="bold"><i class="fa fa-tachometer"
      aria-hidden="true"></i><strong> DV360 Insights </strong> <font color= "#4285F4"size="4.5">
      Campaign Overview </font>
    subtitle_text: How is my campaign performing?
    body_text: "<center> <b>Recommended Action</b>\U0001f447 Drill into impressions\
      \ and cross device conversions to get an overview of campaign performance.<center>"
    row: 2
    col: 5
    width: 14
    height: 3
  - name: Campaign Attribute Breakdown
    type: text
    title_text: Campaign Attribute Breakdown
    subtitle_text: What audiences are performing best?
    body_text: "<center> <b>Recommended Action</b>\U0001f447 Use the KPI Selector\
      \ at the top to choose a performance metric. Drill into geo or device type to\
      \ get a more granular view of performance. .<center>"
    row: 26
    col: 4
    width: 16
    height: 4
  - name: 'Poorly Performing Insertion Orders '
    type: text
    title_text: 'Poorly Performing Insertion Orders '
    subtitle_text: 'Which IOs need attention? (Ranked 1,2,3). '
    body_text: |2-

      <center><i>Rankings done by Contribution to Performance. To see how that is calculated, see README</i><center>
      <center> <b>Recommended Action</b>👇 Use the KPI Selector at the top to choose a performance metric. Click on an Insertion Order to link to the Insertion Order Lookup, where you can take action directly in Looker. .<center>

      Ignore insertion orders without conversions?
    row: 48
    col: 3
    width: 17
    height: 4
  - title: Overall CPA
    name: Overall CPA
    model: campaign_manager_dv360_marketplace
    explore: impression_funnel_dv360
    type: single_value
    fields: [impression_funnel_dv360.cpa, impression_funnel_dv360.previous_period]
    filters:
      impression_funnel_dv360.previous_period: "-NULL"
    sorts: [impression_funnel_dv360.previous_period desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: vs_previous_period, label: vs. Previous Period,
        expression: "(${impression_funnel_dv360.cpa}-offset(${impression_funnel_dv360.cpa},1))/${impression_funnel_dv360.cpa}",
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    defaults_version: 1
    series_types: {}
    listen:
      Date: impression_funnel_dv360.previous_period_filter
      Campaign ID: impression_funnel_dv360.campaign_id
    row: 5
    col: 0
    width: 6
    height: 2
  - title: Overall CPC
    name: Overall CPC
    model: campaign_manager_dv360_marketplace
    explore: impression_funnel_dv360
    type: single_value
    fields: [impression_funnel_dv360.cpc, impression_funnel_dv360.previous_period]
    filters:
      impression_funnel_dv360.previous_period: "-NULL"
    sorts: [impression_funnel_dv360.previous_period desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: vs_previous_period, label: vs. Previous Period,
        expression: "(${impression_funnel_dv360.cpc}-offset(${impression_funnel_dv360.cpc},1))/offset(${impression_funnel_dv360.cpc},1)",
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Metric to Compare: impression_funnel_dv360.metric_selector
      Date: impression_funnel_dv360.previous_period_filter
      Campaign ID: impression_funnel_dv360.campaign_id
    row: 5
    col: 6
    width: 6
    height: 2
  - title: Overall CPM
    name: Overall CPM
    model: campaign_manager_dv360_marketplace
    explore: impression_funnel_dv360
    type: single_value
    fields: [impression_funnel_dv360.cpm, impression_funnel_dv360.previous_period]
    filters: {}
    sorts: [impression_funnel_dv360.previous_period desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: vs_previous_period, label: vs. Previous Period,
        expression: "(${impression_funnel_dv360.cpm}-offset(${impression_funnel_dv360.cpm},1))/offset(${impression_funnel_dv360.cpm},1)",
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Date: impression_funnel_dv360.previous_period_filter
      Campaign ID: impression_funnel_dv360.campaign_id
    row: 7
    col: 6
    width: 6
    height: 2
  - title: Overall CTR
    name: Overall CTR
    model: campaign_manager_dv360_marketplace
    explore: impression_funnel_dv360
    type: single_value
    fields: [impression_funnel_dv360.ctr, impression_funnel_dv360.previous_period]
    filters:
      impression_funnel_dv360.previous_period: "-NULL"
    sorts: [impression_funnel_dv360.previous_period desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: vs_previous_period, label: vs. Previous Period,
        expression: "(${impression_funnel_dv360.ctr}-offset(${impression_funnel_dv360.ctr},1))/offset(${impression_funnel_dv360.ctr},1)",
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Date: impression_funnel_dv360.previous_period_filter
      Campaign ID: impression_funnel_dv360.campaign_id
    row: 7
    col: 0
    width: 6
    height: 2
  - title: Overall CR
    name: Overall CR
    model: campaign_manager_dv360_marketplace
    explore: impression_funnel_dv360
    type: single_value
    fields: [impression_funnel_dv360.cr, impression_funnel_dv360.previous_period]
    filters:
      impression_funnel_dv360.previous_period: "-NULL"
    sorts: [impression_funnel_dv360.previous_period desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: vs_previous_period, label: vs. Previous Period,
        expression: "(${impression_funnel_dv360.cr}-offset(${impression_funnel_dv360.cr},1))/offset(${impression_funnel_dv360.cr},1)",
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Date: impression_funnel_dv360.previous_period_filter
      Campaign ID: impression_funnel_dv360.campaign_id
    row: 9
    col: 0
    width: 6
    height: 2
  - title: "% Viewable Impressions"
    name: "% Viewable Impressions"
    model: campaign_manager_dv360_marketplace
    explore: impression_funnel_dv360
    type: single_value
    fields: [impression_funnel_dv360.percent_impressions_viewed, impression_funnel_dv360.previous_period]
    filters:
      impression_funnel_dv360.previous_period: "-NULL"
    sorts: [impression_funnel_dv360.previous_period desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: vs_previous_period, label: vs. Previous Period,
        expression: "(${impression_funnel_dv360.percent_impressions_viewed}-offset(${impression_funnel_dv360.percent_impressions_viewed},1))/offset(${impression_funnel_dv360.percent_impressions_viewed},1)",
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Date: impression_funnel_dv360.previous_period_filter
      Campaign ID: impression_funnel_dv360.campaign_id
    row: 9
    col: 6
    width: 6
    height: 2
  - title: "% Measurable Impressions"
    name: "% Measurable Impressions"
    model: campaign_manager_dv360_marketplace
    explore: impression_funnel_dv360
    type: single_value
    fields: [impression_funnel_dv360.percent_impressions_measurable, impression_funnel_dv360.previous_period]
    filters:
      impression_funnel_dv360.previous_period_filter: 7 days
      impression_funnel_dv360.previous_period: "-NULL"
    sorts: [impression_funnel_dv360.previous_period desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: vs_previous_period, label: vs. Previous Period,
        expression: "(${impression_funnel_dv360.percent_impressions_measurable}-offset(${impression_funnel_dv360.percent_impressions_measurable},1))/offset(${impression_funnel_dv360.percent_impressions_measurable},1)",
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Date: impression_funnel_dv360.impression_date
      Campaign ID: impression_funnel_dv360.campaign_id
    row: 11
    col: 0
    width: 6
    height: 2
  - title: Top IO
    name: Top IO
    model: campaign_manager_dv360_marketplace
    explore: impression_funnel_dv360
    type: single_value
    fields: [impression_funnel_dv360.dynamic_measure, impression_funnel_dv360.dbm_insertion_order_id_label]
    filters:
      dynamic_io_rank.rank: '1'
    sorts: [impression_funnel_dv360.dynamic_measure desc]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#4285F4"
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    hidden_fields: [impression_funnel_dv360.dynamic_measure]
    series_types: {}
    note_state: collapsed
    note_display: above
    note_text: ''
    listen:
      Metric to Compare: impression_funnel_dv360.metric_selector
      Date: impression_funnel_dv360.impression_date
      Campaign ID: impression_funnel_dv360.campaign_id
    row: 52
    col: 0
    width: 8
    height: 2
  - title: IO 2nd
    name: IO 2nd
    model: campaign_manager_dv360_marketplace
    explore: impression_funnel_dv360
    type: single_value
    fields: [impression_funnel_dv360.dynamic_measure, impression_funnel_dv360.dbm_insertion_order_id_label]
    filters:
      dynamic_io_rank.rank: '2'
    sorts: [impression_funnel_dv360.dynamic_measure desc]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#4285F4"
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    hidden_fields: [impression_funnel_dv360.dynamic_measure]
    series_types: {}
    listen:
      Metric to Compare: impression_funnel_dv360.metric_selector
      Date: impression_funnel_dv360.impression_date
      Campaign ID: impression_funnel_dv360.campaign_id
    row: 52
    col: 8
    width: 8
    height: 2
  - title: IO3
    name: IO3
    model: campaign_manager_dv360_marketplace
    explore: impression_funnel_dv360
    type: single_value
    fields: [impression_funnel_dv360.dynamic_measure, impression_funnel_dv360.dbm_insertion_order_id_label]
    filters:
      dynamic_io_rank.rank: '3'
    sorts: [impression_funnel_dv360.dynamic_measure desc]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#4285F4"
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    hidden_fields: [impression_funnel_dv360.dynamic_measure]
    series_types: {}
    listen:
      Metric to Compare: impression_funnel_dv360.metric_selector
      Date: impression_funnel_dv360.impression_date
      Campaign ID: impression_funnel_dv360.campaign_id
    row: 52
    col: 16
    width: 8
    height: 2
  - title: IO Comparison
    name: IO Comparison
    model: campaign_manager_dv360_marketplace
    explore: impression_funnel_dv360
    type: looker_bar
    fields: [impression_funnel_dv360.dynamic_measure, dynamic_io_rank.rank_comparitor,
      impression_funnel_dv360.dynamic_measure_for_ranking_io_contribution_to_performance,
      impression_funnel_dv360.dbm_revenue]
    filters: {}
    sorts: [dynamic_io_rank.rank_comparitor]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle_outline
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: true
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: !!null '', orientation: top, series: [{axisId: impression_funnel_dv360.dynamic_measure,
            id: impression_funnel_dv360.dynamic_measure, name: CTR}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: top, series: [{axisId: impression_funnel_dv360.dynamic_measure_for_ranking_io_contribution_to_performance,
            id: impression_funnel_dv360.dynamic_measure_for_ranking_io_contribution_to_performance,
            name: Contribution to Performance}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear},
      {label: '', orientation: bottom, series: [{axisId: impression_funnel_dv360.dbm_revenue,
            id: impression_funnel_dv360.dbm_revenue, name: Total Spend}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    size_by_field: impression_funnel_dv360.dbm_revenue
    series_types:
      impression_funnel_dv360.dynamic_measure_for_ranking_io_contribution_to_performance: line
      impression_funnel_dv360.dbm_revenue: scatter
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    hidden_fields:
    show_null_points: true
    interpolation: linear
    listen:
      Metric to Compare: impression_funnel_dv360.metric_selector
      Date: impression_funnel_dv360.impression_date
      Campaign ID: impression_funnel_dv360.campaign_id
    row: 56
    col: 0
    width: 12
    height: 8
  - title: Performance by Device Type
    name: Performance by Device Type
    model: campaign_manager_dv360_marketplace
    explore: impression_funnel_dv360
    type: looker_column
    fields: [impression_funnel_dv360.dynamic_measure_label, impression_funnel_dv360.DBM_Device_Type_Name,
      impression_funnel_dv360.dbm_attributed_inventory_source_is_public]
    pivots: [impression_funnel_dv360.dbm_attributed_inventory_source_is_public]
    sorts: [impression_funnel_dv360.dynamic_measure_label desc 0, impression_funnel_dv360.dbm_attributed_inventory_source_is_public]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: true
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: impression_funnel_dv360.dynamic_measure_label,
            id: false - impression_funnel_dv360.dynamic_measure_label, name: Private},
          {axisId: impression_funnel_dv360.dynamic_measure_label, id: true - impression_funnel_dv360.dynamic_measure_label,
            name: Public}], showLabels: true, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    hidden_series: [Row Total - impression_funnel_dv360.dynamic_measure]
    hide_legend: false
    series_types: {}
    series_colors:
      true - impression_funnel_dv360.dynamic_measure_label: "#FBBC04"
    series_labels:
      false - impression_funnel_dv360.dynamic_measure_label: Private
      true - impression_funnel_dv360.dynamic_measure_label: Public
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Metric to Compare: impression_funnel_dv360.metric_selector
      Date: impression_funnel_dv360.impression_date
      Campaign ID: impression_funnel_dv360.campaign_id
    row: 30
    col: 0
    width: 12
    height: 8
  - title: Top Metric
    name: Top Metric
    model: campaign_manager_dv360_marketplace
    explore: impression_funnel_dv360
    type: single_value
    fields: [impression_funnel_dv360.dynamic_measure_label]
    filters:
      dynamic_io_rank.rank: '1'
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Metric to Compare: impression_funnel_dv360.metric_selector
      Date: impression_funnel_dv360.impression_date
      Campaign ID: impression_funnel_dv360.campaign_id
    row: 54
    col: 0
    width: 4
    height: 2
  - title: Second Metric
    name: Second Metric
    model: campaign_manager_dv360_marketplace
    explore: impression_funnel_dv360
    type: single_value
    fields: [impression_funnel_dv360.dynamic_measure_label]
    filters:
      dynamic_io_rank.rank: '2'
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Metric to Compare: impression_funnel_dv360.metric_selector
      Date: impression_funnel_dv360.impression_date
      Campaign ID: impression_funnel_dv360.campaign_id
    row: 54
    col: 8
    width: 4
    height: 2
  - title: Second Metric (copy)
    name: Second Metric (copy)
    model: campaign_manager_dv360_marketplace
    explore: impression_funnel_dv360
    type: single_value
    fields: [impression_funnel_dv360.dynamic_measure_label]
    filters:
      dynamic_io_rank.rank: '3'
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Metric to Compare: impression_funnel_dv360.metric_selector
      Date: impression_funnel_dv360.impression_date
      Campaign ID: impression_funnel_dv360.campaign_id
    row: 54
    col: 16
    width: 4
    height: 2
  - title: Performance by Designated Metro Area
    name: Performance by Designated Metro Area
    model: campaign_manager_dv360_marketplace
    explore: impression_funnel_dv360
    type: looker_geo_choropleth
    fields: [impression_funnel_dv360.dynamic_measure, impression_funnel_dv360.dbm_designated_market_area_dma_id]
    sorts: [impression_funnel_dv360.dynamic_measure desc]
    limit: 500
    column_limit: 50
    map: auto
    map_projection: ''
    show_view_names: false
    quantize_colors: false
    empty_color: ''
    map_plot_mode: points
    heatmap_gridlines: true
    heatmap_gridlines_empty: true
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light_no_labels
    map_position: custom
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    map_latitude: 37.849556844898764
    map_longitude: -109.75067138671876
    map_zoom: 3
    defaults_version: 1
    series_types: {}
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    listen:
      Metric to Compare: impression_funnel_dv360.metric_selector
      Date: impression_funnel_dv360.impression_date
      Campaign ID: impression_funnel_dv360.campaign_id
    row: 38
    col: 0
    width: 12
    height: 10
  - title: IO Comparison Over Time
    name: IO Comparison Over Time
    model: campaign_manager_dv360_marketplace
    explore: impression_funnel_dv360
    type: looker_line
    fields: [impression_funnel_dv360.dynamic_measure, dynamic_io_rank.rank_comparitor,
      impression_funnel_dv360.impression_date]
    pivots: [dynamic_io_rank.rank_comparitor]
    fill_fields: [impression_funnel_dv360.impression_date]
    filters:
      dynamic_io_rank.rank_input: '1'
    sorts: [dynamic_io_rank.rank_comparitor, impression_funnel_dv360.impression_date
        desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: monotone
    y_axes: [{label: '', orientation: left, series: [{axisId: impression_funnel_dv360.dynamic_measure,
            id: 1. 14443871 - impression_funnel_dv360.dynamic_measure, name: 1. 14443871},
          {axisId: impression_funnel_dv360.dynamic_measure, id: 2. 14193653 - impression_funnel_dv360.dynamic_measure,
            name: 2. 14193653}, {axisId: impression_funnel_dv360.dynamic_measure,
            id: 3. 12037656 - impression_funnel_dv360.dynamic_measure, name: 3. 12037656},
          {axisId: impression_funnel_dv360.dynamic_measure, id: Rest of Insertion
              Orders - impression_funnel_dv360.dynamic_measure, name: Rest of Insertion
              Orders}], showLabels: true, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types:
      Rest of Insertion Orders - impression_funnel_dv360.dynamic_measure: area
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    hidden_fields:
    listen:
      Metric to Compare: impression_funnel_dv360.metric_selector
      Date: impression_funnel_dv360.impression_date
      Campaign ID: impression_funnel_dv360.campaign_id
    row: 56
    col: 12
    width: 12
    height: 8
  - title: Total Line Items
    name: Total Line Items
    model: campaign_manager_dv360_marketplace
    explore: impression_funnel_dv360
    type: single_value
    fields: [impression_funnel_dv360.line_item_count_label]
    filters:
      dynamic_io_rank.rank: '1'
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Metric to Compare: impression_funnel_dv360.metric_selector
      Date: impression_funnel_dv360.impression_date
      Campaign ID: impression_funnel_dv360.campaign_id
    row: 54
    col: 4
    width: 4
    height: 2
  - title: Total Line Items (copy)
    name: Total Line Items (copy)
    model: campaign_manager_dv360_marketplace
    explore: impression_funnel_dv360
    type: single_value
    fields: [impression_funnel_dv360.line_item_count_label]
    filters:
      dynamic_io_rank.rank: '2'
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Metric to Compare: impression_funnel_dv360.metric_selector
      Date: impression_funnel_dv360.impression_date
      Campaign ID: impression_funnel_dv360.campaign_id
    row: 54
    col: 12
    width: 4
    height: 2
  - title: Total Line Items (copy 2)
    name: Total Line Items (copy 2)
    model: campaign_manager_dv360_marketplace
    explore: impression_funnel_dv360
    type: single_value
    fields: [impression_funnel_dv360.line_item_count_label]
    filters:
      dynamic_io_rank.rank: '3'
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Metric to Compare: impression_funnel_dv360.metric_selector
      Date: impression_funnel_dv360.impression_date
      Campaign ID: impression_funnel_dv360.campaign_id
    row: 54
    col: 20
    width: 4
    height: 2
  - title: Campaign Benchmark
    name: Campaign Benchmark
    model: campaign_manager_dv360_marketplace
    explore: impression_funnel_dv360
    type: looker_line
    fields: [impression_funnel_dv360.campaign_comparison, impression_funnel_dv360.dynamic_measure,
      impression_funnel_dv360.impression_date]
    pivots: [impression_funnel_dv360.campaign_comparison]
    fill_fields: [impression_funnel_dv360.impression_date]
    filters:
      impression_funnel_dv360.impression_date: 7 days
    sorts: [impression_funnel_dv360.campaign_comparison 0, impression_funnel_dv360.impression_date
        desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: circle_outline
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: monotone
    y_axes: [{label: '', orientation: left, series: [{axisId: impression_funnel_dv360.dynamic_measure,
            id: 1. 20205054 - impression_funnel_dv360.dynamic_measure, name: 1. 20205054},
          {axisId: impression_funnel_dv360.dynamic_measure, id: 2. Rest of Campaigns
              - impression_funnel_dv360.dynamic_measure, name: 2. Rest of Campaigns}],
        showLabels: true, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: '1'
    hidden_series: [1. 24347206 - impression_funnel_dv360.dynamic_measure]
    series_types: {}
    series_colors:
      1. 20205054 - impression_funnel_dv360.dynamic_measure: "#FBBC04"
      1. 20380741 - impression_funnel_dv360.dynamic_measure: "#EA4335"
      1. 24283272 - impression_funnel_dv360.dynamic_measure: "#FBBC04"
      1. 24193427 - impression_funnel_dv360.dynamic_measure: "#FBBC04"
      1. 24221270 - impression_funnel_dv360.dynamic_measure: "#EA4335"
      2. Rest of Campaigns - impression_funnel_dv360.dynamic_measure: "#34A853"
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Metric to Compare: impression_funnel_dv360.metric_selector
      Campaign ID: impression_funnel_dv360.campaign_input
    row: 5
    col: 12
    width: 12
    height: 8
  - title: Insertion Order Breakdown
    name: Insertion Order Breakdown
    model: campaign_manager_dv360_marketplace
    explore: impression_funnel_dv360
    type: looker_grid
    fields: [impression_funnel_dv360.dbm_revenue, impression_funnel_dv360.dynamic_measure,
      impression_funnel_dv360.dbm_insertion_order_id, impression_funnel_dv360.total_impressions,
      impression_funnel_dv360.total_clicks, impression_funnel_dv360.total_conversions]
    filters:
      impression_funnel_dv360.dbm_insertion_order_id: ''
    sorts: [impression_funnel_dv360.dbm_revenue desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      impression_funnel_dv360.dbm_revenue:
        is_active: true
      impression_funnel_dv360.count_impressions:
        is_active: true
      impression_funnel_dv360.total_impressions:
        is_active: true
      impression_funnel_dv360.total_clicks:
        is_active: true
      impression_funnel_dv360.total_conversions:
        is_active: true
    series_text_format:
      impression_funnel_dv360.dbm_line_item_id:
        bold: true
        fg_color: "#4285F4"
        align: center
        italic: true
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#4285F4",
        font_color: !!null '', color_application: {collection_id: google, palette_id: google-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: [impression_funnel_dv360.dynamic_measure]}]
    series_value_format:
      impression_funnel_dv360.dbm_line_item_id:
        name: id
        format_string: '0'
        label: ID
    defaults_version: 1
    series_types: {}
    listen:
      Metric to Compare: impression_funnel_dv360.metric_selector
      Date: impression_funnel_dv360.impression_date
      Campaign ID: impression_funnel_dv360.campaign_id
    row: 17
    col: 12
    width: 12
    height: 9
  - title: Total Insertion Orders
    name: Total Insertion Orders
    model: campaign_manager_dv360_marketplace
    explore: impression_funnel_dv360
    type: single_value
    fields: [impression_funnel_dv360.insertion_order_count]
    filters: {}
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen:
      Date: impression_funnel_dv360.impression_date
      Campaign ID: impression_funnel_dv360.campaign_id
    row: 11
    col: 6
    width: 6
    height: 2
  - title: Percent Change in Metric by IO
    name: Percent Change in Metric by IO
    model: campaign_manager_dv360_marketplace
    explore: impression_funnel_dv360
    type: looker_bar
    fields: [impression_funnel_dv360.dbm_insertion_order_id, impression_funnel_dv360.dynamic_measure,
      impression_funnel_dv360.previous_period]
    pivots: [impression_funnel_dv360.previous_period]
    filters:
      impression_funnel_dv360.dbm_insertion_order_id: ''
      impression_funnel_dv360.previous_period: "-NULL"
      impression_funnel_dv360.dynamic_measure: NOT NULL
    sorts: [impression_funnel_dv360.previous_period 0, percent_change desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: percent_change, label: Percent Change, expression: 'max(pivot_row((${impression_funnel_dv360.dynamic_measure}-pivot_offset(${impression_funnel_dv360.dynamic_measure},-1))/pivot_offset(${impression_funnel_dv360.dynamic_measure},-1)))',
        value_format: !!null '', value_format_name: percent_2, _kind_hint: supermeasure,
        _type_hint: number}, {table_calculation: is_not_null, label: Is Not Null,
        expression: 'NOT is_null(${percent_change})', value_format: !!null '', value_format_name: !!null '',
        _kind_hint: supermeasure, _type_hint: yesno}]
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: percent_change, id: percent_change,
            name: Percent Change}], showLabels: true, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      impression_funnel_dv360.dbm_revenue:
        is_active: true
      impression_funnel_dv360.count_impressions:
        is_active: true
    series_text_format:
      impression_funnel_dv360.dbm_line_item_id:
        bold: true
        fg_color: "#4285F4"
        align: center
        italic: true
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#4285F4",
        font_color: !!null '', color_application: {collection_id: google, palette_id: google-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: [impression_funnel_dv360.dynamic_measure]}]
    series_value_format:
      impression_funnel_dv360.dbm_line_item_id:
        name: id
        format_string: '0'
        label: ID
    defaults_version: 1
    hidden_fields: [impression_funnel_dv360.dynamic_measure]
    note_state: collapsed
    note_display: above
    note_text: Based on Date Filter, compared to Prior Period
    hidden_points_if_no: [is_null, is_not_null]
    listen:
      Metric to Compare: impression_funnel_dv360.metric_selector
      Date: impression_funnel_dv360.previous_period_filter
      Campaign ID: impression_funnel_dv360.campaign_id
    row: 17
    col: 0
    width: 12
    height: 9
  - name: Insertion Order Breakdown (2)
    type: text
    title_text: Insertion Order Breakdown
    subtitle_text: How are my Insertion Orders Performing?
    body_text: "<center> <b>Recommended Action</b>\U0001f447 Use the KPI Selector\
      \ to pick out a comparison metric, and link out to the IO Lookup Dashboard for\
      \ any IOs that show a large percent change.<center>"
    row: 13
    col: 0
    width: 24
    height: 4
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<center><b>Disclaimer: We are using IDs for all visualizations. In\
      \ future iterations, we will be including more descriptive names for all ID\
      \ fields.</b></center>"
    row: 0
    col: 0
    width: 24
    height: 2
  - title: Link to DV360
    name: Link to DV360
    model: campaign_manager_dv360_marketplace
    explore: impression_funnel_dv360
    type: single_value
    fields: [impression_funnel_dv360.campaign_id_button]
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    series_types: {}
    listen:
      Date: impression_funnel_dv360.impression_date
      Campaign ID: impression_funnel_dv360.campaign_id
    row: 2
    col: 19
    width: 5
    height: 3
  - title: Performance by Targeted Segments
    name: Performance by Targeted Segments
    model: campaign_manager_dv360_marketplace
    explore: impression_funnel_dv360
    type: looker_grid
    fields: [impression_funnel_dv360.dynamic_measure, dbm_matching_targeted_segments_array.dbm_matching_targeted_segments]
    filters: {}
    sorts: [impression_funnel_dv360.dynamic_measure desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: vs_average, label: vs. Average, expression: "(${impression_funnel_dv360.dynamic_measure}-mean(${impression_funnel_dv360.dynamic_measure}))/mean(${impression_funnel_dv360.dynamic_measure})",
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}]
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      impression_funnel_dv360.dynamic_measure:
        is_active: false
      vs_average:
        is_active: true
        palette:
          palette_id: google-sequential-0
          collection_id: google
    series_text_format:
      impression_funnel_dv360.dbm_creative_id:
        bold: true
        italic: true
        fg_color: "#4285F4"
        align: center
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#4285F4",
        font_color: !!null '', color_application: {collection_id: google, palette_id: google-diverging-0,
          options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [impression_funnel_dv360.dynamic_measure]}]
    series_types: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Metric to Compare: impression_funnel_dv360.metric_selector
      Date: impression_funnel_dv360.impression_date
      Campaign ID: impression_funnel_dv360.campaign_id
    row: 30
    col: 12
    width: 12
    height: 8
  - title: Performance by Operating System
    name: Performance by Operating System
    model: campaign_manager_dv360_marketplace
    explore: impression_funnel_dv360
    type: looker_column
    fields: [impression_funnel_dv360.dbm_operating_system_id, impression_funnel_dv360.dynamic_measure]
    filters:
      impression_funnel_dv360.dynamic_measure: NOT NULL
    sorts: [impression_funnel_dv360.dynamic_measure desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: impression_funnel_dv360.dynamic_measure,
            id: impression_funnel_dv360.dynamic_measure, name: Dynamic Measure}],
        showLabels: true, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Metric to Compare: impression_funnel_dv360.metric_selector
      Date: impression_funnel_dv360.impression_date
      Campaign ID: impression_funnel_dv360.campaign_id
    row: 38
    col: 12
    width: 12
    height: 10
  - title: Cluster Dashboard Button
    name: Cluster Dashboard Button
    model: campaign_manager_dv360_marketplace
    explore: impression_funnel_dv360
    type: single_value
    fields: [impression_funnel_dv360.cluster_dashboards]
    filters: {}
    sorts: [impression_funnel_dv360.cluster_dashboards]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen:
      Date: impression_funnel_dv360.impression_date
      Campaign ID: impression_funnel_dv360.campaign_id
    row: 2
    col: 0
    width: 5
    height: 3
  - title: IOs without Clicks/Conversions
    name: IOs without Clicks/Conversions
    model: campaign_manager_dv360_marketplace
    explore: impression_funnel_dv360
    type: single_value
    fields: [impression_funnel_dv360.insertion_order_count]
    filters:
      io_facts.dbm_revenue_d: NULL,0
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    series_types: {}
    listen:
      Metric to Compare: impression_funnel_dv360.metric_selector
      Date: impression_funnel_dv360.impression_date
      Campaign ID: impression_funnel_dv360.campaign_id
    row: 48
    col: 20
    width: 4
    height: 4
  filters:
  - name: Campaign ID
    title: Campaign ID
    type: field_filter
    allow_multiple_values: false
    required: true
    ui_config:
      type: dropdown_menu
      display: popover
    model: campaign_manager_dv360_marketplace
    explore: impression_funnel_dv360
    listens_to_filters: []
    field: impression_funnel_dv360.campaign_id
  - name: Metric to Compare
    title: Metric to Compare
    type: field_filter
    default_value: Cost Per Acquisition
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
      options:
      - Cost Per Acquisition
      - Cost Per Click
      - Click Through Rate
      - Cost Per 1000 Impressions
      - Conversion Rate
      - Viewable Impression Rate
      - Measureable Impression Rate
    model: campaign_manager_dv360_marketplace
    explore: impression_funnel_dv360
    listens_to_filters: []
    field: impression_funnel_dv360.metric_selector
  - name: Date
    title: Date
    type: field_filter
    default_value: 7 day ago for 7 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: inline
      options:
      - seven
      - fourteen
      - thirty
    model: campaign_manager_dv360_marketplace
    explore: impression_funnel_dv360
    listens_to_filters: []
    field: impression_funnel_dv360.impression_date
