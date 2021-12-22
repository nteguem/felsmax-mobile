import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

///
/// Preferences related
///
const String _storageKey = "MyApplication_";
const List<String> _supportedLanguages = ['en', 'fr', 'es'];
Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

class GlobalTranslations {
  Locale _locale;
  Map<dynamic, dynamic> _localizedValues;
  VoidCallback _onLocaleChangedCallback;

  static const LocalizationsDelegate<GlobalTranslations> delegate =
      _AppLocalizationsDelegate();

  ///
  /// Returns the list of supported Locales
  ///
  Iterable<Locale> supportedLocales() => _supportedLanguages
      .map<Locale>((lang) => new Locale(lang, lang.toUpperCase()));

  ///
  /// Returns the translation that corresponds to the [key]
  ///
  String text(String key, {Map<String, String> arguments}) {
    // Return the requested string
    return (_localizedValues == null || _localizedValues[key] == null)
        ? '** $key not found'
        : _buildTextTranslation(_localizedValues[key], arguments);
  }

  String _buildTextTranslation(
      String textFromLanguageFile, Map<String, String> arguments) {
    String typicalTranslation = textFromLanguageFile;
    arguments?.entries?.forEach((entry) {
      typicalTranslation = typicalTranslation.replaceAll(
          "\{\{" + entry.key + "\}\}", entry.value);
    });
    return typicalTranslation;
  }

  ///
  /// Returns the current language code
  ///
  get currentLanguage => _locale == null ? '' : _locale.languageCode;

  ///
  /// Returns the current Locale
  ///
  get locale => _locale;

  ///
  /// One-time initialization
  ///
  Future<Null> init([String language]) async {
    if (_locale == null) {
      await setNewLanguage(language);
    }
    return null;
  }

  /// ----------------------------------------------------------
  /// Method that saves/restores the preferred language
  /// ----------------------------------------------------------
  getPreferredLanguage() async {
    return _getApplicationSavedInformation('language');
  }

  setPreferredLanguage(String lang) async {
    return _setApplicationSavedInformation('language', lang);
  }

  ///
  /// Routine to change the language
  ///
  Future<Null> setNewLanguage(
      [String newLanguage, bool saveInPrefs = false]) async {
    String language = newLanguage;
    if (language == null) {
      language = await getPreferredLanguage();
    }

    // Set the locale
    if (language == "") {
      language = "fr";
    }

    _locale = Locale(language, "");

    // Load the language strings
    String jsonContent = await rootBundle
        .loadString('assets/i18n/${this.locale.languageCode}.json');
    _localizedValues = json.decode(jsonContent);

    // If we are asked to save the new language in the application preferences
    if (saveInPrefs) {
      await setPreferredLanguage(language);
    }

    // If there is a callback to invoke to notify that a language has changed
    if (_onLocaleChangedCallback != null) {
      _onLocaleChangedCallback();
    }

    return null;
  }

  ///
  /// Callback to be invoked when the user changes the language
  ///
  set onLocaleChangedCallback(VoidCallback callback) {
    _onLocaleChangedCallback = callback;
  }

  ///
  /// Application Preferences related
  ///
  /// ----------------------------------------------------------
  /// Generic routine to fetch an application preference
  /// ----------------------------------------------------------
  Future<String> _getApplicationSavedInformation(String name) async {
    final SharedPreferences prefs = await _prefs;

    return prefs.getString(_storageKey + name) ?? '';
  }

  /// ----------------------------------------------------------
  /// Generic routine to saves an application preference
  /// ----------------------------------------------------------
  Future<bool> _setApplicationSavedInformation(
      String name, String value) async {
    final SharedPreferences prefs = await _prefs;

    return prefs.setString(_storageKey + name, value);
  }

  ///
  /// Singleton Factory
  ///
  static final GlobalTranslations _translations =
      new GlobalTranslations._internal();

  factory GlobalTranslations() {
    return _translations;
  }

  GlobalTranslations._internal();
}

GlobalTranslations translations = new GlobalTranslations();

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<GlobalTranslations> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en', 'fr'].contains(locale.languageCode);
  }

  @override
  Future<GlobalTranslations> load(Locale locale) async {
    GlobalTranslations localizations = new GlobalTranslations();
    await localizations.init();
    return localizations;
  }

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}
