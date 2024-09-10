// Variables para los elementos del DOM
const pokemonName = document.getElementById("pokemon-name");
const pokemonId = document.getElementById("pokemon-id");
const weight = document.getElementById("weight");
const height = document.getElementById("height");
const spriteContainer = document.getElementById("sprite-container");
const type = document.getElementById("types");
const hp = document.getElementById("hp");
const attack = document.getElementById("attack");
const defense = document.getElementById("defense");
const specialAttack = document.getElementById("special-attack");
const specialDefense = document.getElementById("special-defense");
const speed = document.getElementById("speed");
const table = document.getElementById("table");
const defaultImage = document.getElementById("defaultImage");
const searchButton = document.getElementById("search-button");
const searchInput = document.getElementById("search-input");
const resultDiv = document.getElementById("result-div");

// Colores para los tipos de Pokémon
const typeColors = {
    electric: '#FFEA70',
    ghost: '#705898',
    poison: '#A040A0',
    fire: '#F08030',
    flying: '#A890F0',
    grass: '#78C850',
    water: '#6890F0',
    psychic: '#F85888',
    normal: '#A8A878',
    fairy: '#F4B1F4'
};

// Función para actualizar la información del Pokémon
function updatePokemonInfo(pokemon) {
    pokemonName.textContent = pokemon.name.charAt(0).toUpperCase() + pokemon.name.slice(1);
    pokemonId.textContent = `#${pokemon.id}`;
    weight.textContent = `Weight: ${pokemon.weight}`;
    height.textContent = `Height: ${pokemon.height}`;

    spriteContainer.innerHTML = `<img id="sprite" src="${pokemon.sprites.front_default}" alt="${pokemon.name} sprite">`;

    type.innerHTML = pokemon.types.map(t => {
        const typeColor = typeColors[t.type.name] || '#ddd';
        return `<p style="background-color: ${typeColor};">${t.type.name.charAt(0).toUpperCase() + t.type.name.slice(1)}</p>`;
    }).join('');

    hp.textContent = pokemon.stats.find(stat => stat.stat.name === 'hp').base_stat;
    attack.textContent = pokemon.stats.find(stat => stat.stat.name === 'attack').base_stat;
    defense.textContent = pokemon.stats.find(stat => stat.stat.name === 'defense').base_stat;
    specialAttack.textContent = pokemon.stats.find(stat => stat.stat.name === 'special-attack').base_stat;
    specialDefense.textContent = pokemon.stats.find(stat => stat.stat.name === 'special-defense').base_stat;
    speed.textContent = pokemon.stats.find(stat => stat.stat.name === 'speed').base_stat;

    resultDiv.style.display = "flex";
    table.style.display = "block";
    defaultImage.style.display = "none";
}

// Función para limpiar la información del Pokémon
function clearPokemonInfo() {
    pokemonName.textContent = '';
    pokemonId.textContent = '';
    weight.textContent = '';
    height.textContent = '';
    type.innerHTML = '';
    hp.textContent = '';
    attack.textContent = '';
    defense.textContent = '';
    specialAttack.textContent = '';
    specialDefense.textContent = '';
    speed.textContent = '';
    spriteContainer.innerHTML = '';
}

// Función para buscar un Pokémon usando la API
async function searchPokemon(query) {
    try {
        const response = await fetch(`https://pokeapi-proxy.freecodecamp.rocks/api/pokemon/${query}`);
        
        if (!response.ok) {
            throw new Error("Pokémon not found");
        }
        
        const pokemon = await response.json();
        updatePokemonInfo(pokemon);
    } catch (error) {
        clearPokemonInfo();
        resultDiv.style.display = "none";
        table.style.display = "none";
        defaultImage.style.display = "block";
        alert(error.message);
        console.error(`Error: ${error.message}`);
    }
}

// Manejo del evento de búsqueda
searchButton.addEventListener("click", () => {
    const searchValue = searchInput.value.trim().toLowerCase();
    if (!searchValue) {
        alert("Please enter a Pokémon name or ID.");
        return;
    }
    searchPokemon(searchValue);
    searchInput.value = '';

});

