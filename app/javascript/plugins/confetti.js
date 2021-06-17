// import { tsParticles } from "tsparticles";

export const initConfetti = () => {
  tsParticles.load("tsparticles", {
    fpsLimit: 60,
    particles: {
      number: {
        value: 0
      },
      color: {
        value: ["#9BBEC7", "#E5A61B", "#DE8FAD"]
      },
      shape: {
        type: "confetti",
        options: {
          confetti: {
            type: ["circle", "square"]
          }
        }
      },
      opacity: {
        value: 1,
        animation: {
          enable: true,
          minimumValue: 0,
          speed: 2,
          startValue: "max",
          destroy: "min"
        }
      },
      size: {
        value: 7,
        random: {
          enable: true,
          minimumValue: 3
        }
      },
      links: {
        enable: false
      },
      life: {
        duration: {
          sync: true,
          value: 5
        },
        count: 1
      },
      move: {
        enable: true,
        gravity: {
          enable: true,
          acceleration: 20
        },
        speed: 20,
        decay: 0.1,
        direction: "none",
        random: false,
        straight: false,
        outModes: {
          default: "destroy",
          top: "none"
        }
      }
    },
    interactivity: {
      detectsOn: "window",
      events: {
        resize: true
      }
    },
    detectRetina: true,
    background: {
      color: "transparent"
    },
    emitters: {
      direction: "none",
      life: {
        count: 0,
        duration: 0.1,
        delay: 0.4
      },
      rate: {
        delay: 0.1,
        quantity: 100
      },
      size: {
        width: 0,
        height: 0
      }
    }
  });  
  console.log("Hello");
}
