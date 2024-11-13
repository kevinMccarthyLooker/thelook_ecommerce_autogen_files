include: "/auto_gen_views/users.view.lkml"
include: "/standard_view_enhancements/primary_key_and_count.view.lkml"
view: +users {
  extends: [primary_key_and_count]
  dimension: primary_key {sql:${id};;}
  dimension: id {hidden:yes}

  dimension: country {map_layer_name:countries}
  dimension: state {map_layer_name:us_states}
}

#organize related fields into group_labels
view: +users {
  dimension: country {group_label:"Location"}
  dimension: state {group_label:"Location"}
  dimension: city {group_label:"Location"}
  dimension: postal_code {group_label:"Location"}
  dimension: street_address {group_label:"Location"}
  dimension: location {group_label:"Location"}
  dimension: latitude {group_label:"Location"}
  dimension: longitude {group_label:"Location"}

  dimension: age {group_label:"Demographics"}
  dimension: gender {group_label:"Demographics"}

}
