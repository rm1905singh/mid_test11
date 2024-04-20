module "mrgs" {
  source = "../../modules/1RGS"
  rgs    = var.rgs

}
module "mvnet" {
  depends_on = [module.mrgs]
  source     = "../../modules/2VNETS"
  vnets      = var.vnets

}
module "msubnets" {
  depends_on = [module.mvnet]
  source     = "../../modules/3SUBNETS"
  subnets    = var.subnets

}
module "mnic" {
  depends_on = [module.msubnets]
  source     = "../../modules/4NIC"
  nics       = var.nics

}

module "mnsg" {
  depends_on = [module.mrgs]
  source     = "../../modules/5NSG"
  nsgs       = var.nsgs

}
module "mnsga" {
  depends_on = [module.mnsg]
  source     = "../../modules/6NSGA"
  nsgass     = var.nsgas

}

module "mvm" {
  depends_on = [module.mnic]
  source     = "../../modules/7VMS"
  vms        = var.vms

}
module "mpip" {
  depends_on = [module.mrgs]
  source     = "../../modules/8PIP"
  pips       = var.pips

}
module "mabh" {
  depends_on   = [module.mpip]
  source       = "../../modules/9ABHOST"
  azbationhost = var.azbationhost

}
module "mlb" {
  depends_on = [module.mpip]
  source     = "../../modules/11LBS"
  lbs        = var.lbs

}
module "mkv" {
  depends_on = [ module.mrgs ]
  source = "../../../modules/10KV"
  kvs = var.kvs
  
}
