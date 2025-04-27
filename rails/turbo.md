# Turbo

## Debug

```javascript
const initDatePicker = (event) => {
  const foo = document.getElementById('foo');
  console.log(event, foo)
}
document.addEventListener("turbo:load", initDatePicker('turbo:load'));
document.addEventListener("turbo:frame-load", initDatePicker('frame-load'));
document.addEventListener("DOMContentLoaded", initDatePicker('dom'));
```
