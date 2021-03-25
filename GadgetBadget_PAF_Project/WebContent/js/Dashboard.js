$(document).ready(function () {
    $('.dropbtnProjects').click(function () {
    	$('nav ul .dropContProjects').toggleClass('show');
    	$('nav ul .Projects-sp').toggleClass('rotate');
    });
});

$(document).ready(function () {
    $('.dropbtnAccounts').click(function () {
        $('nav ul .dropContAccounts').toggleClass('show');
        $('nav ul .Accounts-sp').toggleClass('rotate');
    });
});

$(document).ready(function () {
    $('.dropbtnPayments').click(function () {
    	$('nav ul .dropContPayments').toggleClass('show');
    	$('nav ul .Payments-sp').toggleClass('rotate');
    });
});