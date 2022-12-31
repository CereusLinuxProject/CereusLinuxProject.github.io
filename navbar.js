async function includeHTML() {
  const z = document.querySelectorAll('[inc]');
  for (const elmnt of z) {
    const file = elmnt.getAttribute('inc');
    try {
      const response = await fetch(file);
      if (response.ok) {
        elmnt.innerHTML = await response.text();
        elmnt.removeAttribute('inc');
      }
    } catch (error) {
      console.error(error);
    }
  }
}