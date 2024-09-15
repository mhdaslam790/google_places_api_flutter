import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:google_places_api_flutter/src/google_api/googl_api_bloc.dart';
import 'package:google_places_api_flutter/src/domain/google_api/place_details_model.dart';
import 'package:google_places_api_flutter/src/domain/google_api/prediction_model.dart';
import 'package:google_places_api_flutter/src/domain/injection.dart';

class PlaceSearchField extends StatefulWidget {
  PlaceSearchField({
    super.key,
    required this.apiKey,
    required this.itemBuilder,
    this.decorationBuilder,
    this.controller,
    this.direction,
    this.debounceDuration,
    this.hideOnSelect = true,
    this.hideOnUnfocus = true,
    this.hideWithKeyboard = true,
    this.retainOnLoading = true,
    this.itemSeparatorBuilder,
    this.listBuilder,
    this.builder,
    this.isLatLongRequired = false,
    required this.onPlaceSelected,
    this.webCorsProxyUrl,
    this.errorBuilder,
    this.focusNode,
    this.loadingBuilder,
    this.emptyBuilder,
    this.scrollController,
    this.suggestionsController,
    this.transitionBuilder,
    this.constraints,
    this.offset,
    this.autoFlipDirection = false,
    this.autoFlipMinHeight = 144,
    this.hideKeyboardOnDrag = false,
    this.hideOnEmpty = false,
    this.hideOnError = false,
    this.hideOnLoading = false,
    this.animationDuration,
  }) : assert(apiKey.isNotEmpty, 'API key cannot be empty');

  /// The Google API key used for querying the Places API.
  final String apiKey;

  /// The proxy URL for handling CORS issues when running on the web.
  /// It is required when using the widget in a web environment.
  /// Example: `https://cors-anywhere.herokuapp.com`.
  final String? webCorsProxyUrl;

  /// Function that builds each item in the list of suggestions.
  final Widget Function(BuildContext, Prediction) itemBuilder;

  /// Optional function to build custom decoration for the TypeAhead widget.
  final Widget Function(BuildContext, Widget)? decorationBuilder;

  /// Controller for the input text field, allowing external control of the text input.
  final TextEditingController? controller;

  /// The vertical direction in which the suggestions list will expand.
  final VerticalDirection? direction;

  /// Duration for debouncing user input, to limit API requests.
  final Duration? debounceDuration;

  /// Whether to hide the suggestions list when a suggestion is selected.
  final bool hideOnSelect;

  /// Whether to hide the suggestions list when the input loses focus.
  final bool hideOnUnfocus;

  /// Whether to hide the suggestions list when the keyboard is dismissed.
  final bool hideWithKeyboard;

  /// Whether to retain the current loading state even when a new set of suggestions is loading.
  final bool? retainOnLoading;

  /// Optional function to build a custom separator between suggestion items.
  final Widget Function(BuildContext, int)? itemSeparatorBuilder;

  /// Optional function to build a custom list of suggestions.
  final Widget Function(BuildContext, List<Widget>)? listBuilder;

  /// Function to build the text input field with custom decoration or additional widgets.
  final Widget Function(BuildContext, TextEditingController, FocusNode)?
      builder;

  /// Indicates if latitude and longitude details are required for the selected place.
  final bool isLatLongRequired;

  /// Function to handle when a place is selected, providing the selected prediction
  /// and its corresponding place details (if latitude and longitude are required).
  final void Function(Prediction, PlaceDetailsModel?) onPlaceSelected;

  /// Duration for the animation of the dropdown's appearance.
  final Duration? animationDuration;

  /// If true, the direction of the suggestions list will automatically flip
  /// based on available space on the screen.
  final bool autoFlipDirection;

  /// The minimum height required to automatically flip the direction of the suggestions list.
  final double autoFlipMinHeight;

  /// Optional function to build a widget when an error occurs during suggestions loading.
  final Widget Function(BuildContext, Object)? errorBuilder;

  /// Focus node for the text input field, to manage focus programmatically.
  final FocusNode? focusNode;

  /// If true, the keyboard will hide when the user drags the suggestions list.
  final bool? hideKeyboardOnDrag;

  /// If true, hides the suggestions list when no suggestions are available.
  final bool? hideOnEmpty;

  /// If true, hides the suggestions list when an error occurs.
  final bool? hideOnError;

  /// If true, hides the suggestions list while loading new suggestions.
  final bool? hideOnLoading;

  /// Optional function to build a loading widget while suggestions are being fetched.
  final Widget Function(BuildContext)? loadingBuilder;

  /// Optional function to build a widget when no suggestions are found.
  final Widget Function(BuildContext)? emptyBuilder;

  /// Scroll controller for the suggestions list, to control scrolling programmatically.
  final ScrollController? scrollController;

  /// Controller for managing the suggestions list programmatically, for advanced use cases.
  final SuggestionsController<Prediction>? suggestionsController;

  /// Optional function to build custom transitions for the dropdown animation.
  final Widget Function(BuildContext, Animation<double>, Widget)?
      transitionBuilder;

  /// Constraints for controlling the size of the suggestions dropdown.
  final BoxConstraints? constraints;

  /// Offset for positioning the dropdown relative to the text field.
  final Offset? offset;

  @override
  State<PlaceSearchField> createState() => _PlaceSearchFieldState();
}

class _PlaceSearchFieldState extends State<PlaceSearchField> {
  @override
  void initState() {
    configureInjection('prod');
    if (kIsWeb &&
        (widget.webCorsProxyUrl == null || widget.webCorsProxyUrl!.isEmpty)) {
      assert(false, 'webCorsProxyUrl is required when running on the web');
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GooglApiBloc>(
      create: (context) => getIt<GooglApiBloc>(),
      child: TypeAheadField<Prediction>(
        controller: widget.controller,
        direction: widget.direction,
        emptyBuilder: widget.emptyBuilder,
        builder: widget.builder,
        decorationBuilder: widget.decorationBuilder,
        itemBuilder: widget.itemBuilder,
        debounceDuration: widget.debounceDuration,
        hideOnSelect: widget.hideOnSelect,
        hideOnUnfocus: widget.hideOnUnfocus,
        hideWithKeyboard: widget.hideWithKeyboard,
        retainOnLoading: widget.retainOnLoading,
        itemSeparatorBuilder: widget.itemSeparatorBuilder,
        listBuilder: widget.listBuilder,
        animationDuration: widget.animationDuration,
        autoFlipDirection: widget.autoFlipDirection,
        autoFlipMinHeight: widget.autoFlipMinHeight,
        errorBuilder: widget.errorBuilder,
        focusNode: widget.focusNode,
        hideKeyboardOnDrag: widget.hideKeyboardOnDrag,
        hideOnEmpty: widget.hideOnEmpty,
        hideOnError: widget.hideOnError,
        hideOnLoading: widget.hideOnLoading,
        loadingBuilder: widget.loadingBuilder,
        scrollController: widget.scrollController,
        suggestionsController: widget.suggestionsController,
        transitionBuilder: widget.transitionBuilder,
        constraints: widget.constraints,
        offset: widget.offset,
        onSelected: (prediction) {
          if (widget.isLatLongRequired) {
            final bloc = getIt<GooglApiBloc>();
            bloc.add(
              GooglApiEvent.getPlaceDetailsFromPlaceId(
                predictionModel: prediction,
                apikey: widget.apiKey,
                onPlaceSelected: widget.onPlaceSelected,
                webCorsUrl: widget.webCorsProxyUrl,
              ),
            );
          } else {
            widget.onPlaceSelected(
              prediction,
              null,
            );
          }

          if (widget.controller != null) {
            widget.controller!.text = prediction.description;
            widget.controller!.selection = TextSelection.fromPosition(
              TextPosition(
                offset: prediction.description.length,
              ),
            );
          }
        },
        suggestionsCallback: (data) async {
          if (data.isEmpty) return [];
          final bloc = getIt<GooglApiBloc>();
          bloc.add(GooglApiEvent.getLocationInfo(
            text: data,
            apikey: widget.apiKey,
            webCorsUrl: widget.webCorsProxyUrl,
          ));
          return bloc.stream
              .where((state) => !state.isLocationLoading)
              .map((state) =>
                  state.predicitionInfo?.predictions.map((p) => p).toList() ??
                  [])
              .first;
        },
      ),
    );
  }
}
