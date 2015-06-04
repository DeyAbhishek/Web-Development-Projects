var app = angular.module('app', []);

app.config(['$routeProvider',
  function($routeProvider) {
    $routeProvider.
      when('/temperature', {
	templateUrl: 'temperature.jsp',
	controller: 'TemperatureController'
      }).
      when('/DO', {
	templateUrl: 'DO.jsp',
	controller: 'DOController'
      }).
        when('/pH', {
	templateUrl: 'pH.jsp',
	controller: 'pHController'
      }).
      when('/conductivity', {
    		templateUrl: 'conductivity.jsp',
    		controller: 'ConductivityController'
    	      }).
      when('/salinity', {
    		templateUrl: 'salinity.jsp',
    		controller: 'SalinityController'
    	      }).
      when('/turbidity', {
    		templateUrl: 'turbidity.jsp',
    		controller: 'TurbidityController'
    	      }).
      when('/light', {
    		templateUrl: 'light.jsp',
    		controller: 'LightController'
	      }).
      otherwise({
	redirectTo: '/temperature'
      });
}]);



//We don't need Controllers as of now

app.controller('TemperatureController', ['$scope', '$location', function($scope, $location) {
  $scope.name = 'Temperature';
  $scope.caseInfo = {};
}]);


app.controller('DOController', ['$scope',
    function($scope) {
        $scope.name = "DO";

}
]);


app.controller('pHController', ['$scope',
    function($scope) {
        $scope.name = "pH";

}
]);


app.controller('ConductivityController', ['$scope',
    function($scope) {
        $scope.name = "";

}
]);


app.controller('SalinityController', ['$scope',
    function($scope) {
        $scope.name = "";

}
]);


app.controller('TurbidityController', ['$scope',
    function($scope) {
        $scope.name = "";

}
]);

app.controller('LightController', ['$scope',
                                       function($scope) {
                                           $scope.name = "Light";

                                   }
                                   ]);
