include: "/auto_gen_views/events.view.lkml"
include: "/standard_view_enhancements/primary_key_and_count.view.lkml"
view: +events {
  extends: [primary_key_and_count]
  dimension: primary_key {sql:${id};;}
  dimension: id {hidden:yes}

  #separate keys, etc, for simple set of fields
  dimension: session_id {view_label: "Events (Tech Fields)" hidden:yes}
}
