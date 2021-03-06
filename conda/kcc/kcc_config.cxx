#include "kcc_config.hxx"
#include "kcc_node.hxx"

#include "dconfig.h"

Configure(config_kcc);
NotifyCategoryDef(kcc , "");

ConfigureFn(config_kcc) {
  init_libkcc();
}

void init_libkcc() {
  static bool initialized = false;
  if (initialized) {
    return;
  }
  initialized = true;
  KCCNode::init_type();
  return;
}
