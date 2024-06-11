

import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    console.log("Controller conectado!");
  }

  test() {
    console.log("Teste de JavaScript!"); 
    this.element.textContent = "Olá Mundo!"; 
  }
}