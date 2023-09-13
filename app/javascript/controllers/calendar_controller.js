import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="calendar"
export default class extends Controller {
  connect() {
    console.log("Hello from Calendar Controller")
    console.log(this.element)
  }

  
}
