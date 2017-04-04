app.controller('authCtrl', function ($scope, $rootScope, $routeParams, $location, $http, Data) {
    //initially set those objects to null to avoid undefined error
    $scope.login = {};
    $scope.signup = {};
    $scope.doLogin = function (customer) {
        Data.post('login', {
            customer: customer
        }).then(function (results) {
            Data.toast(results);
            if (results.status == "success") {
                $location.path('dashboard');
            }
        });
    };

    //=== countries ===
    $scope.countries = [
        {countryName : "USA", code : "99"},
        {countryName : "Russia", code : "98"},
        {countryName : "India", code : "97"},
        {countryName : "Australia", code : "96"},
        {countryName : "South Africa", code : "95"}
    ];
    //=================

    //=== currencies ===
    $scope.currencies = [
        {currencyName : "USD", value : "10"},
        {currencyName : "EUR", value : "10"},
        {currencyName : "GBP", value : "10"}
    ];
    //=================    

    $scope.signup = {email:'',password:'',first_name:'',last_name:'',phone:'',country:'',currency:'',date:''};
    $scope.signUp = function (customer) {
        Data.post('signUp', {
            customer: customer
        }).then(function (results) {
            Data.toast(results);
            if (results.status == "success") {
                $location.path('dashboard');
            }
        });
    };
    $scope.logout = function () {
        Data.get('logout').then(function (results) {
            Data.toast(results);
            $location.path('login');
        });
    }
});