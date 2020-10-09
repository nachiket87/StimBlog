import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["slide"];

  initialize() {
    this.showCurrentSlide();
  }

  next() {
    this.index++;
  }

  previous() {
    this.index--;
  }

  showCurrentSlide() {
    this.slideTargets.forEach((el, i) => {
      el.classList.toggle("slide--current", this.index == i);
    });
  }

  get index() {
    const temp = parseInt(this.data.get("index"));
    if (temp === this.slideTargets.length) {
      return 0;
    } else if (temp < 0) {
      return this.slideTargets.length - 1;
    } else {
      return temp;
    }
  }

  set index(value) {
    this.data.set("index", value);
    this.showCurrentSlide();
  }
}
