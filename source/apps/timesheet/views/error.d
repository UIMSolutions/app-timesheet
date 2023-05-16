module apps.timesheets.controllers.pages.error;

import apps.timesheets;
@safe:

class DTSHErrorPageController : DAPPPageController {
  mixin(ControllerThis!("TSHErrorPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(TSHErrorView(this));
  }
}
mixin(ControllerCalls!("TSHErrorPageController"));
