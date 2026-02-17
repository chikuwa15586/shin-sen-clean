document.addEventListener("turbo:load", function() {

  const card = document.getElementById("omikuji-card");
  const resultDiv = document.getElementById("omikuji-result");

  if (!card || !resultDiv) return;

  const rarity = resultDiv.dataset.rarity;

  card.addEventListener("click", () => {

    card.style.display = "none";
    resultDiv.style.display = "block";

    if (rarity === "god") {

      setTimeout(() => {
        const godAudio = new Audio("/sounds/god.mp3");
        godAudio.volume = 1.0;
        godAudio.play().catch(() => {});
        resultDiv.classList.add("animation-god");
      }, 500);

    } else if (rarity === "super_rare") {

      const daikichiAudio = new Audio("/sounds/daikichi.mp3");
      daikichiAudio.volume = 0.9;
      daikichiAudio.play().catch(() => {});
      resultDiv.classList.add("animation-super");

    } else if (rarity === "bad") {

      resultDiv.classList.add("bad-flash");

      setTimeout(() => {
        const badAudio = new Audio("/sounds/bad.mp3");
        badAudio.volume = 0.9;
        badAudio.play().catch(() => {});
        resultDiv.classList.add("animation-bad");
      }, 200);

    } else {

      resultDiv.classList.add("normal-flash");

      setTimeout(() => {
        const normalAudio = new Audio("/sounds/normal.mp3");
        normalAudio.volume = 0.6;
        normalAudio.play().catch(() => {});
        resultDiv.classList.add("animation-normal");
      }, 120);

    }

  });

});
