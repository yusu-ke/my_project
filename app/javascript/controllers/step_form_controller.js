import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="step-form"
export default class extends Controller {
  static targets = ["step"];

  connect() {
    this.currentStep = 1;
    this.showCurrentStep();
  }

  autoNext() {
    const delay = 700;

    setTimeout(() => {
      if (this.currentStep < this.stepTargets.length) {
        this.currentStep++;
        this.showCurrentStep()
      }
    }, delay);
  }


  showCurrentStep() {
    this.stepTargets.forEach((stepElement, index) => {
      if (index === this.currentStep - 1) {
        stepElement.style.display = "block";
      } else {
        stepElement.style.display = "none";
      }
    });
  }

  validateCurrentStep() {
    const currentStepElement = this.stepTargets[this.currentStep - 1];
    const radioGroup = currentStepElement.querySelectorAll('input[type="radio"]');

    let isValid = false;
    radioGroup.forEach((radio) => {
      if (radio.checked) {
        isValid = true;
      }
    });
    return isValid
  }

  nextStep() {
    if (this.validateCurrentStep()) {
      if (this.currentStep < this.stepTargets.length) {
        this.currentStep++;
        this.showCurrentStep();
      }
    } else {
      alert("選択してください");
    }
  }

  prevStep() {
    if (this.currentStep > 1) {
      this.currentStep--;
      this.showCurrentStep();
    }
  }

  submitForm() {
    if (!this.validateCurrentStep()) {
      event.preventDefault();
      alert("選択してください")
    }
  }
}
