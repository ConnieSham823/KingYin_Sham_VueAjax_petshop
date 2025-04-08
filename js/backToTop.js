export function backToTopButton() {
    const backToTopButton = document.querySelector("#back-to-top");

    window.onscroll = function() {
        if (document.body.scrollTop > 200 || document.documentElement.scrollTop > 200) {
            backToTopButton.style.display = "block";
        } else {
            backToTopButton.style.display = "none";
        }
    };

    backToTopButton.addEventListener("click", function() {
        gsap.to(window, {
            duration: 1, 
            scrollTo: { y: 0 }, 
            ease: "power2.out"
        });
    });
}
