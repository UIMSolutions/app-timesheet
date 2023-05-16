module apps.timesheets.controllers.pages.index;

import apps.timesheets;
@safe:

class DTSHIndexPageController : DAPPPageController {
  mixin(ControllerThis!("TSHIndexPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(TSHIndexView(this));
  }

  override void beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DTSHIndexPageController~":DTSHIndexPageController::beforeResponse");
    super.beforeResponse(options);
    if (hasError || "redirect" in options) { return; }

    this.view(
      TSHIndexView(this));
  }
}
mixin(ControllerCalls!("TSHIndexPageController"));


