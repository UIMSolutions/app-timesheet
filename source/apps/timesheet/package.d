module apps.timesheets;

mixin(ImportPhobos!());

// Dub
public import vibe.d;

// UIM
public import uim.core;
public import uim.bootstrap;
public import uim.html;
public import uim.oop;
public import uim.models;
public import uim.apps;
public import uim.controls;
public import uim.servers;

public import langs.javascript;

public {
  import apps.timesheets.controllers;
  import apps.timesheets.helpers;
  import apps.timesheets.tests;
  import apps.timesheets.views;
}

DApp timesheetsApp;
static this() {
  timesheetsApp = App
    .name("timesheetsApp")
    .rootPath("/apps/timesheets")
    .addRoute(Route("", HTTPMethod.GET, TSHIndexPageController))
    .addRoute(Route("/", HTTPMethod.GET, TSHIndexPageController));
}