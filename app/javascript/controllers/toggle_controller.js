import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["togglableElement", "descriptionTruncate"]

  display() {
    this.togglableElementTarget.classList.remove("d-none");
    this.descriptionTruncateTarget.classList.add("d-none")
  }

  remove() {
    this.togglableElementTarget.classList.add("d-none");
    this.descriptionTruncateTarget.classList.remove("d-none")
  }
}
