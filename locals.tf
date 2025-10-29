locals {
   web = "${var.vm_web_image}-${var.default_zone}"
   db = "${var.vm_db_image}-${var.vm_db_default_zone}"
}
