include: "/auto_gen_views/users.view.lkml"
include: "/standard_view_enhancements/primary_key_and_count.view.lkml"
view: +users {
  extends: [primary_key_and_count]
}
