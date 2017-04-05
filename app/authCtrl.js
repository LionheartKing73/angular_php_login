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

    $http.get("api/v1/getCountryData.php").then(function (response) {
        $scope.countries = response.data;
    });

    $.getJSON('http://api.wipmania.com/jsonp?callback=?', function (data) {
        myCountry = data.address.country;        
        $("#country_select").val(myCountry);        

        for (i = 0; i < $scope.countries.length; i++) {
            if($scope.countries[i].countryName == myCountry){
                $('#phone_number').val($scope.countries[i].code + ' : ');
            }            
        }                
    });      

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