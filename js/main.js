import { backToTopButton } from './backToTop.js';

(function() {
    console.log("IIFE Fired");

    if (window.location.pathname.includes("index.html")) {
        backToTopButton();
    }
})();

const app = Vue.createApp({
    created() {
        // Fetch the list of pets when the component is created
        fetch('http://localhost/petshop-back/public/pets')
        .then(response => response.json())
        .then(data => {
            this.petsData = data;
            this.loadingPets = false;
        })
        .catch(error => {
            console.error(error);
            this.error = "Failed to load pet data.";
        });
    },
    data() {
        return {
            petsData: [],
            breed: "",
            pet_image: "",
            character_1: "",
            character_2: "",
            // from dogs table
            dog_image: "",
            dog_name: "",
            sex: "",
            location: "",
            price: "",
            error: "",
            loading: false,
            loadingPets: true,
        };
    },
    methods: {
        getDog(id) {
            this.loading = true;
            this.error = ""; 

            const petInfoCon = document.querySelector('#petInfoCon');
            
            fetch(`http://localhost/petshop-back/public/pets/${id}`)
            .then(response => response.json())
            .then(data => {
                if (data && data.length > 0) {
                    const petData = data[0];
                    this.loading = false;

                    // Update Vue data properties
                    this.dog_name = petData.dog_name || 'Not Available';
                    this.dog_image = petData.dog_image || 'Not available';
                    this.breed = petData.breed || 'Not Available';
                    this.sex = petData.sex || 'Not Available';
                    this.location = petData.location || 'Not Available';
                    this.price = petData.price || 'Not Available';
                } else {
                    this.loading = false;
                    this.error = "No dog found with the given ID.";
                }
            })
            .then(() => {
                // Scroll to the dog info section after loading
                if (petInfoCon) {
                    petInfoCon.scrollIntoView({ behavior: 'smooth', block: 'end' });
                }
            })
            .catch(error => {
                this.loading = false;
                this.error = "An error occurred while fetching dog details.";
                console.error(error);
            });
        }
    }
}).mount('#app');


