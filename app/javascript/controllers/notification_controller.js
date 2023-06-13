import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="notification"
export default class extends Controller {
  static targets = ["list", "spinner"];
  connect() {}
  notice() {
    if (this.listTarget.classList.contains("hide")) {
      this.listTarget.classList.remove("hide");
      this.spinnerTarget.classList.add("hide");
    } else {
      this.listTarget.classList.add("hide");
    }
  }
}
