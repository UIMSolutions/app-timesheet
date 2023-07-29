/*********************************************************************************************************
  Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
  License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
  Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module apps.timesheet;

mixin(ImportPhobos!());

// External
public {
  import vibe.d;
}

// UIM
public import uim.core;
public import uim.bootstrap;
public import uim.html;
public import uim.oop;
public import uim.models;
public import uim.apps;
public import web.controls;
public import uim.servers;

public import langs.javascript;

public {
  import apps.timesheet.controllers;
  import apps.timesheet.helpers;
  import apps.timesheet.routers;
  import apps.timesheet.tests;
  import apps.timesheet.views;
}

static this() {
  // Create app
  auto myApp = App("timesheetApp", "apps/timesheet");

  // Customize app
  with(myApp) {
    importTranslations;
    addControllers([
      "time.index": IndexPageController
    ]);
    addRoutes(
      Route("", HTTPMethod.GET, controller("time.index")),
      Route("/", HTTPMethod.GET, controller("time.index"))
    );
  }

  // Register app
  AppRegistry.register("apps.timesheet", myApp);
}
