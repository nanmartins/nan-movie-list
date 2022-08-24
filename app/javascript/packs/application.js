// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

// Rails.start()
// Turbolinks.start()
// ActiveStorage.start()

// Bootstrap import
import "bootstrap";

// Components import
import { initSortable } from '../plugins/initSortable';
import { initSmoothScroll } from "../plugins/initSmoothScroll";

document.addEventListener('turbolinks:load', () => {
  initSortable();
});

// Stimulus import
// import { Application } from "stimulus"
// import { definitionsFromContext } from "stimulus/webpack-helpers"


// Stimulus
// const application = Application.start()
// const context = require.context("controllers", true, /_controller\.js$/)
// application.load(definitionsFromContext(context))
