module "lob_onboarding" {
  count  = var.lob_deploy ? 1 : 0
  source = "./modules/gluecatalog"
}