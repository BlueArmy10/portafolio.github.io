// Selecciona los elementos del DOM
const text = document.querySelector("#text .quote-content");
const author = document.getElementById("author");
const newQuoteBtn = document.getElementById("new-quote");

// Array de colores que quieres usar
const colors = [
    '#e39ba8', // Rosa pastel más intenso
    '#c5a2bf', // Rosa pálido
    '#ffcb96', // Melocotón más fuerte
    '#e6b375', // Amarillo melón más oscuro
    '#e9d877', // Amarillo pastel
    '#e6cf88', // Amarillo claro más saturado
    '#ead2b1', // Beige más contrastado
    '#bfcfbd', // Verde suave con más contraste
    '#91bc97', // Verde menta
    '#b7dacd', // Verde menta más marcado
    '#cce6a3', // Verde manzana más intenso
    '#93c8b7', // Turquesa suave más vivo
    '#a6cee3', // Azul cielo más saturado
    '#9dcbd2', // Azul hielo más saturado
    '#91afbc', // Azul grisáceo
    '#b9a8cc', // Lavanda grisácea más fuerte
    '#e5bdf0', // Lila suave más oscuro
    '#b6a1cc', // Lavanda
];

// Biblioteca de citas
const quotes = [
    {
        text: "El único modo de hacer un gran trabajo es amar lo que haces.",
        author: "Steve Jobs",
    },
    {
        text: "La vida es lo que pasa mientras estás ocupado haciendo otros planes.",
        author: "John Lennon",
    },
    {
        text: "No cuentes los días, haz que los días cuenten.",
        author: "Muhammad Ali",
    },
    {
        text: "La mayor gloria no es nunca caer, sino levantarse siempre.",
        author: "Nelson Mandela",
    },
    {
        text: "El éxito es la suma de pequeños esfuerzos repetidos día tras día.",
        author: "Robert Collier",
    },
    {
        text: "La creatividad es inteligencia divirtiéndose.",
        author: "Albert Einstein",
    },
    {
        text: "El conocimiento habla, pero la sabiduría escucha.",
        author: "Jimi Hendrix",
    },
    {
        text: "No puedes nadar hacia nuevos horizontes hasta que tengas el coraje de perder de vista la orilla.",
        author: "William Faulkner",
    },
    {
        text: "El éxito no es la clave de la felicidad. La felicidad es la clave del éxito.",
        author: "Albert Schweitzer",
    },
    {
        text: "Haz lo que puedas, con lo que tengas, donde estés.",
        author: "Theodore Roosevelt",
    },
    {
        text: "No importa lo lento que vayas, mientras no te detengas.",
        author: "Confucio",
    },
    {
        text: "Tu tiempo es limitado, no lo desperdicies viviendo la vida de otra persona.",
        author: "Steve Jobs",
    },
    {
        text: "El futuro pertenece a quienes creen en la belleza de sus sueños.",
        author: "Eleanor Roosevelt",
    },
    {
        text: "Si tus acciones crean un legado que inspira a otros a soñar más, aprender más, hacer más y convertirse en más, entonces eres una excelente líder.",
        author: "Dolly Parton",
    },
    {
        text: "Haz cada día una obra maestra.",
        author: "Oprah Winfrey",
    },
    {
        text: "No estoy aceptando las cosas que no puedo cambiar, estoy cambiando las cosas que no puedo aceptar.",
        author: "Angela Davis",
    },
    {
        text: "Las mujeres pertenecen a todos los lugares donde se toman decisiones.",
        author: "Ruth Bader Ginsburg",
    },
    {
        text: "La mejor protección que cualquier mujer puede tener es el coraje.",
        author: "Elizabeth Cady Stanton",
    },
    {
        text: "No nacemos como mujer, nos convertimos en una.",
        author: "Simone de Beauvoir",
    },
    {
        text: "El coraje es como un músculo. Lo fortalecemos usándolo.",
        author: "Ruth Gordon",
    },
    {
        text: "El éxito no es sobre cuánto dinero ganas, es sobre la diferencia que haces en la vida de las personas.",
        author: "Michelle Obama",
    },
    {
        text: "La vida no es fácil para ninguna de nosotras, pero ¿qué importa? Debemos tener perseverancia y, sobre todo, confianza en nosotras mismas.",
        author: "Marie Curie",
    },
    {
        text: "La justicia no es ciega. Es sorda y muda en demasiadas ocasiones.",
        author: "Rigoberta Menchú",
    },
    {
        text: "He aprendido que la gente olvidará lo que dijiste, olvidará lo que hiciste, pero nunca olvidará cómo les hiciste sentir.",
        author: "Maya Angelou",
    },
    {
        text: "Haz lo mejor que puedas hasta que sepas más. Cuando sepas más, hazlo mejor.",
        author: "Maya Angelou",
    }
];

// Función para obtener una cita aleatoria sin que se repita la misma cita de forma consecutiva
let previousQuote = null;

function getRandomQuote() {
    let randomQuote;

    do {
        randomQuote = quotes[Math.floor(Math.random() * quotes.length)];
    } while (randomQuote === previousQuote);
    previousQuote = randomQuote;
    return randomQuote;
}

// Función para cambiar el color
let colorIndex = 0;

function changeColor() {
    const color = colors[colorIndex];
    colorIndex = (colorIndex + 1) % colors.length;
    document.documentElement.style.setProperty('--color', color);
    return color;
}

// Función para cambiar de cita y color con efecto difuminado
function displayQuoteWithFade(quote, color) {
    text.style.transition = "opacity 0.5s";
    author.style.transition = "opacity 0.5s";
    text.style.opacity = 0;
    author.style.opacity = 0;

    setTimeout(() => {
        text.textContent = quote.text;
        author.textContent = `— ${quote.author}`;

        text.style.opacity = 1;
        author.style.opacity = 1;
    }, 500);
}

// Manejar el evento de clic en el botón
newQuoteBtn.addEventListener("click", () => {
    const randomQuote = getRandomQuote();
    const nextColor = changeColor();
    displayQuoteWithFade(randomQuote, nextColor);
});

// Mostrar una cita aleatoria cuando se carga la página
document.addEventListener("DOMContentLoaded", () => {
    const initialQuote = getRandomQuote();
    const initialColor = changeColor();
    displayQuoteWithFade(initialQuote, initialColor);
});

// Función para construir el enlace de compartir en LinkedIn
function getLinkedInShareLink() {
    const quoteText = text.textContent;
    const quoteAuthor = author.textContent;
    const message = `"${quoteText}" — ${quoteAuthor}`;
    const encodedMessage = encodeURIComponent(message);

    // URL de LinkedIn para compartir
    const baseUrl = 'https://www.linkedin.com/sharing/share-offsite/?url=';
    const shareUrl = `https://example.com/share?text=${encodedMessage}`; // Reemplaza con tu URL de página

    return baseUrl + encodeURIComponent(shareUrl);
}

// Manejar el clic en el botón de LinkedIn
document.getElementById('linkedin-quote').addEventListener('click', (e) => {
    e.preventDefault(); // Evita el comportamiento predeterminado
    const linkedinLink = getLinkedInShareLink();
    window.open(linkedinLink, '_blank');
});

// Función para construir el enlace de compartir en Twitter
function getTwitterShareLink() {
    const quoteText = text.textContent;
    const quoteAuthor = author.textContent;
    const message = `"${quoteText}" — ${quoteAuthor}`;
    const encodedMessage = encodeURIComponent(message);
    const baseUrl = 'https://twitter.com/intent/tweet?text=';

    return baseUrl + encodedMessage;
}

// Manejar el clic en el botón de Twitter
document.getElementById('tweet-quote').addEventListener('click', (e) => {
    e.preventDefault(); // Evita el comportamiento predeterminado
    const twitterLink = getTwitterShareLink();
    window.open(twitterLink, '_blank');
});