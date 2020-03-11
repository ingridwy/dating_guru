import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css"

flatpickr(".datepicker", {
  minDate: Date.now(),
  maxDate: "2025"
})
