// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import "channels";
import "bootstrap";

import "@hotwired/turbo-rails"
import * as ActiveStorage from "@rails/activestorage";

import Rails from "@rails/ujs";
Rails.start();
ActiveStorage.start();

require("trix");
require("@rails/actiontext");
require("packs/amdesk.js");
require("packs/amdesk-init.js");

import "controllers"
