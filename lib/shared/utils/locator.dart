import 'dart:collection';
import 'dart:developer';

import 'package:marketplace/features/home/services/banner_service.dart';
import 'package:marketplace/features/home/services/product_service.dart';
import 'package:marketplace/features/view_product_detail/controllers/product_detail_controller.dart';

import '../../features/home/controllers/home_controller.dart';
import '../../features/landing/controllers/landing_controller.dart';

/// A tool to retrieve any instance of the apps registered services
///
/// The service locator pattern is a relatively old pattern that was very popular
/// with Java EE. Martin Fowler described it in 2004 on his blog. The goal of
/// this pattern is to improve the modularity of your application by removing
/// the dependency between the client and the implementation of an interface.
///
/// Interfaces are one of the most flexible and powerful tools to decouple
/// software components and to improve the maintainability of your code.
abstract class Locator {
  static Map? _serviceMap;
  static Map? _controllerMap;

  static void _init() {
    _initialiseServices();
    _initialiseControllers();
  }

  /// Initialises all services for future access
  ///
  /// Please register any new services here
  static void _initialiseServices() {
    log('Initializing service locator');
    _serviceMap = HashMap();

    log('Registering service locator');
    _registerService<BannerService>(BannerService());
    _registerService<ProductService>(ProductService());
  }

  /// Initialises all controllers for future access
  ///
  /// Please register any new services here
  static void _initialiseControllers() {
    log('Initializing controller locator');
    _controllerMap = HashMap();

    log('Registering controller locator');
    _registerController<HomeController>(HomeController());
    _registerController<LandingController>(LandingController());
    _registerController<ProductDetailController>(ProductDetailController());
  }

  /// Retrieves a Controller instance object of type [T].
  ///
  /// This method also incorporates the lazy-initialisation of the service
  /// locator.
  /// Throws an [ArgumentError] if you try to access a class that has
  /// not been registered.
  static T getController<T>() {
    if (_controllerMap == null) {
      _init();
    }
    if (!_controllerMap!.containsKey('$T')) {
      throw ArgumentError(
          'Tried to access a service that you did not register: $T');
    }
    return _controllerMap!['$T'];
  }

  /// Retrieves a Service instance object of type [T].
  ///
  /// This method also incorporates the lazy-initialisation of the service
  /// locator.
  /// Throws an [ArgumentError] if you try to access a class that has
  /// not been registered.
  static T getService<T>() {
    if (_serviceMap == null) {
      _init();
    }
    if (!_serviceMap!.containsKey('$T')) {
      throw ArgumentError(
          'Tried to access a controller that you did not register: $T');
    }
    return _serviceMap!['$T'];
  }

  /// Retrieves a Service or Controller instance object of type [T].
  ///
  /// This method also incorporates the lazy-initialisation of the service
  /// locator.
  /// Throws an [ArgumentError] if you try to access a class that has
  /// not been registered.
  static T get<T>() {
    if (_serviceMap == null || _controllerMap == null) {
      _init();
    }
    if (!_serviceMap!.containsKey('$T') && !_controllerMap!.containsKey('$T')) {
      throw ArgumentError(
          'Tried to access a dependency that you did not register: $T');
    }
    return _serviceMap!['$T'] ?? _controllerMap!['$T'];
  }

  /// Register a new service instance.
  static void _registerService<T>(T instance) {
    try {
      _serviceMap!['$T'] = instance;
    } catch (e) {
      log('Exception while adding service: $e');
    }
  }

  /// Register a new controller instance.
  static void _registerController<T>(T instance) {
    try {
      _controllerMap!['$T'] = instance;
    } catch (e) {
      log('Exception while adding controller: $e');
    }
  }
}
