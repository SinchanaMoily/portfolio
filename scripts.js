document.addEventListener('DOMContentLoaded', function() {
    // Function to display a specific section
    function showSection(sectionId) {
        const sections = document.querySelectorAll('main > section');
        sections.forEach(section => {
            section.classList.toggle('active', section.id === sectionId);
        });
    }

    // Navigation click event listener to show the respective section
    document.querySelector('nav').addEventListener('click', function(event) {
        if (event.target.tagName === 'A') {
            const sectionId = event.target.getAttribute('onclick').split("'")[1];
            showSection(sectionId);
        }
    });

    // Display certificates
    const certDisplay = document.getElementById('certDisplay');
    const certPaths = [
        'certificates/095-sinchana1_page-0001.jpg',
        'certificates/095-sinchana-image_page-0001.jpg',
        'certificates/095-Sinchana-internk8S.jpg',
        'certificates/095-sinchana-linux.jpg',
        'certificates/095-sinchana-nano.jpg',
        'certificates/095-sinchana-onramp_page-0001.jpg',
        'certificates/095-sinchana-python.jpg',
        'certificates/095-sinchana-tb.jpg',
        'certificates/095-sinchana-technova.jpg',
        'certificates/095-sinchana-tiara.jpg',
        'certificates/095-Sinchana-verilog_page-0001.jpg',
        'certificates/Salesforce.jpg',
        'certificates/095-sinchana-intern.jpg',
        'certificates/pic1.jpg',
        'certificates/pic2.jpg'
    ];
    certPaths.forEach(path => {
        const img = document.createElement('img');
        img.src = path;
        img.alt = 'Certificate';
        img.classList.add('certificate-pic');
        img.addEventListener('click', function() {
            showOverlay(img.src);
        });
        certDisplay.appendChild(img);
    });



    // Function to show overlay with the clicked image
    function showOverlay(src) {
        const overlay = document.getElementById('overlay');
        const overlayImg = document.getElementById('overlay-img');
        overlayImg.src = src;
        overlay.classList.add('show');
    }

    // Function to close the overlay
    function closeOverlay() {
        document.getElementById('overlay').classList.remove('show');
    }

    // Overlay click event listener to close the overlay
    document.querySelector('.overlay').addEventListener('click', function(event) {
        if (event.target === this || event.target.classList.contains('close-btn')) {
            closeOverlay();
        }
    });
});
