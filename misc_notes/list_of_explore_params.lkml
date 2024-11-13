
# #copied from quick help 2024-11-13
# explore: identifier {

# #Metadata about the explore and how it appears in explore picker
#   description: possibly-localized-string
#   group_label: possibly-localized-string
#   hidden: yes or no
#   label: possibly-localized-string
#   tags: ["string"]

# #Extension related params
#   extends: [explore-ref]
#   extension: required or ...
#   final: yes or no

# #Related to base view of explore, most often used in extension scenarios
#   view_label: possibly-localized-string
#   view_name: view-ref
#   from: view-ref
#   sql_table_name: sql-block ;;

# #Security and limiting data
#   required_access_grants: [access-grant-ref]
#   access_filter:
#   always_filter:
#   conditionally_filter:
#   sql_always_where: sql-block ;;
#   sql_always_having: sql-block ;;

# #Sepcial field controls
#   cancel_grouping_fields: [field-ref]
#   fields: [field-ref]

# #filter behavior
#   case_sensitive: yes or no


#   always_join: [view-ref]
#   join: identifier

# #query caching esettings
#   persist_for: "string"
#   persist_with: datagroup-ref

# #explicitly defined queries using the explore (quick help and special PDTs)
#   query: identifier
#   aggregate_table: identifier
# }
