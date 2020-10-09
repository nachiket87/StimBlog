import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["output", "maits"];

  greet() {
    this.outputTarget.textContent = `We did it! ${this.maitsTarget.value}`;
  }
}
