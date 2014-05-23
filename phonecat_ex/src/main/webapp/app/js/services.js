'use strict';

/* Services */

var phonecatServices = angular.module('phonecatServices', ['ngResource']);

phonecatServices.factory('Phone', ['$resource','$http',
  function($resource,$http,event){
	return $resource('../phonegallarys', {}, {
	      query: {method:'GET', params:{}, isArray:true}
	
	    });
}]);
phonecatServices.factory('Phone', ['$resource','$http','$routeParams',
                                   function($resource,$http,$routeParams,event){
 	return $resource('../phonegallarys/:id', {}, {
	      query1: {method:'GET', params:{'id':$routParams.id}, isArray:false}
	
	    });
}]);
