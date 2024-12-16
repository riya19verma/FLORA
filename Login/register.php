<script>
    function validateForm() {
        const user = document.getElementById("user").value.trim();
        const pass = document.getElementById("pass").value.trim();
        const email = document.getElementById("email").value.trim();
        const name = document.getElementById("name").value.trim();
        const state = document.getElementById("state").value;

        // Check if any field is empty
        if (user === "" || pass === "" || email === "" || name === "" || state === "") {
            alert("All fields are required.");
            return false;
        }

        // Check password length
        if (pass.length < 6) {
            alert("Password must be at least 6 characters long.");
            return false;
        }

        // Check email format (basic validation)
        if (email.indexOf("@") === -1 || email.indexOf(".") === -1 || email.startsWith("@") || email.endsWith(".")) {
            alert("Please enter a valid email address.");
            return false;
        }

        // Ensure a valid state is selected
        if (state === "Select State") {
            alert("Please select a valid state.");
            return false;
        }

        return true; // If all validations pass
    }
</script>
