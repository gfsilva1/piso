import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["box"]
  connect() {
    console.log("wee")
  }
  toggle() {
    this.boxTargets.forEach((box) => {
      box.checked = event.currentTarget.checked;
    })
  }
}
