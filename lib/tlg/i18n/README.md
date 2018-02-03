# i18n Localization

## Regenerating

Run the following in the root of the project to generate the strings map
(`intl_messages.arb`):

    flutter pub pub run intl_translation:extract_to_arb \
      --output-dir=lib/tlg/i18n \
      lib/tlg/strings.dart
    
Once the map is created, each file will need to be converted to the locale
specific maps such as `en_GB.arb`. Each string map will need the `@@locale`
key added to each file and sent for translation.

Once all files have been translated, they can be recombined with the following
command:

    flutter pub pub run intl_translation:generate_from_arb \
      --output-dir=lib/tlg/i18n \
      --no-use-deferred-loading \
      lib/*.dart lib/tlg/*.dart \
      lib/tlg/i18n/??_??.arb