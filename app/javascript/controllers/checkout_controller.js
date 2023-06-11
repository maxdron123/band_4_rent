import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="checkout"
export default class extends Controller {
  static targets = ["form", "button"];
  connect() {
    console.log("Connected to show page");
  }
  formAppear() {
    this.buttonTarget.setAttribute("disabled", "");
    this.formTarget.classList.remove("basket");
  }
}
