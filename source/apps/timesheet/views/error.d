/*********************************************************************************************************
  Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
  License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
  Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module apps.timesheet.views.error;

import apps.timesheet;
@safe:

class DTSHErrorView : DView {
  mixin(ViewThis!("TSHErrorView"));

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    debugMethodCall(moduleName!DTSHErrorView~":DTSHErrorView("~this.name~")::toH5");
    super.toH5(options);

    return [
      H5Div("APP TSH -> Error")
    ].toH5;
  }
}
mixin(ViewCalls!("TSHErrorView"));
