// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flare_dart/math/mat2d.dart';
import 'package:flare_flutter/flare.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flare_flutter/flare_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gallery/constants.dart';
import 'package:gallery/data/gallery_options.dart';
import 'package:gallery/l10n/gallery_localizations.dart';
import 'package:gallery/layout/adaptive.dart';

class Backdrop extends StatefulWidget {
  final Widget frontLayer;
  final Widget backLayer;

  Backdrop({Key key, @required this.frontLayer, @required this.backLayer})
      : assert(frontLayer != null),
        assert(backLayer != null),
        super(key: key);

  @override
  _BackdropState createState() => _BackdropState();
}

class _BackdropState extends State<Backdrop>
    with TickerProviderStateMixin, FlareController {
  AnimationController _controller;
  AnimationController _desktopController;

  double _speed = 4;
  double _settingsAnimationProgress = 0;
  ActorAnimation _settingsAnimation;

  bool get _isPanelVisible {
    final AnimationStatus status = _controller.status;
    return status == AnimationStatus.completed ||
        status == AnimationStatus.forward;
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        duration: Duration(milliseconds: 100), value: 1, vsync: this)
      ..addListener(() {
        this.setState(() {});
      });
    _desktopController = AnimationController(
        duration: Duration(milliseconds: 100), value: 0, vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    _desktopController.dispose();
    super.dispose();
  }

  @override
  void initialize(FlutterActorArtboard artboard) {
    _settingsAnimation = artboard.getAnimation("Animations");
  }

  @override
  void setViewTransform(Mat2D viewTransform) {
    // This is a necessary override for the [FlareController] mixin.
  }

  @override
  bool advance(FlutterActorArtboard artboard, double elapsed) {
    double animateDirection = _isPanelVisible ? -1 : 1;

    double targetAnimationProgress =
        _settingsAnimationProgress + animateDirection * elapsed * _speed;

    targetAnimationProgress = targetAnimationProgress.clamp(0, 2).toDouble();

    _settingsAnimationProgress = targetAnimationProgress;
    _settingsAnimation.apply(_settingsAnimationProgress, artboard, 1);

    return true;
  }

  Animation<RelativeRect> _getPanelAnimation(BoxConstraints constraints) {
    final double height = constraints.biggest.height;
    final double top = height - galleryHeaderHeight;
    final double bottom = -galleryHeaderHeight;
    return RelativeRectTween(
      begin: RelativeRect.fromLTRB(0, top, 0, bottom),
      end: RelativeRect.fromLTRB(0, 0, 0, 0),
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.linear));
  }

  List<Widget> _galleryHeader() {
    return [
      if (_isPanelVisible)
        Semantics(
          sortKey: OrdinalSortKey(
            GalleryOptions.of(context).textDirection() == TextDirection.ltr
                ? 1.0
                : 2.0,
            name: 'header',
          ),
          excludeSemantics: !_isPanelVisible,
          label: GalleryLocalizations.of(context).homeHeaderGallery,
          child: Container(),
        ),
    ];
  }

  Widget _buildStack(BuildContext context, BoxConstraints constraints) {
    final Animation<RelativeRect> animation = _getPanelAnimation(constraints);

    final Widget frontLayer = ExcludeSemantics(
      child: widget.frontLayer,
      excluding: _isPanelVisible,
    );
    final Widget backLayer = ExcludeSemantics(
      child: widget.backLayer,
      excluding: !_isPanelVisible,
    );

    return Container(
      child: Stack(
        children: [
          if (!isDisplayDesktop(context)) ...[
            ..._galleryHeader(),
            frontLayer,
            PositionedTransition(
              rect: animation,
              child: backLayer,
            ),
          ],
          if (isDisplayDesktop(context)) ...[
            ..._galleryHeader(),
            backLayer,
            if (!_isPanelVisible) ...[
              ModalBarrier(
                semanticsLabel:
                    MaterialLocalizations.of(context).modalBarrierDismissLabel,
                dismissible: true,
              ),
              Semantics(
                label:
                    MaterialLocalizations.of(context).modalBarrierDismissLabel,
                child: GestureDetector(
                  onTap: () {
                    if (!_isPanelVisible) {
                      _controller.fling(velocity: _isPanelVisible ? -1 : 1);
                      _desktopController.fling(
                          velocity: _isPanelVisible ? -1 : 1);
                    }
                  },
                ),
              )
            ],
            ScaleTransition(
              alignment: Directionality.of(context) == TextDirection.ltr
                  ? Alignment.topRight
                  : Alignment.topLeft,
              scale: CurvedAnimation(
                parent: _desktopController,
                curve: Curves.easeIn,
                reverseCurve: Curves.easeOut,
              ),
              child: Align(
                alignment: AlignmentDirectional.topEnd,
                child: Material(
                  elevation: 8,
                  clipBehavior: Clip.antiAlias,
                  borderRadius: BorderRadius.circular(40),
                  color: Theme.of(context).colorScheme.secondaryVariant,
                  child: Container(
                    constraints: const BoxConstraints(
                      maxHeight: 560,
                      maxWidth: desktopSettingsWidth,
                      minWidth: desktopSettingsWidth,
                    ),
                    child: frontLayer,
                  ),
                ),
              ),
            ),
          ],
          Align(
            alignment: AlignmentDirectional.topEnd,
            child: Semantics(
              sortKey: OrdinalSortKey(
                GalleryOptions.of(context).textDirection() == TextDirection.ltr
                    ? 2.0
                    : 1.0,
                name: 'header',
              ),
              button: true,
              label: _isPanelVisible
                  ? GalleryLocalizations.of(context).settingsButtonLabel
                  : GalleryLocalizations.of(context).settingsButtonCloseLabel,
              excludeSemantics: !_isPanelVisible,
              child: SafeArea(
                child: SizedBox(
                  width: 64,
                  height: isDisplayDesktop(context) ? 56 : 40,
                  child: GestureDetector(
                    onTap: () {
                      _controller.fling(velocity: _isPanelVisible ? -1 : 1);
                      _desktopController.fling(
                          velocity: _isPanelVisible ? -1 : 1);
                    },
                    child: Material(
                      borderRadius: BorderRadiusDirectional.only(
                        bottomStart: Radius.circular(10),
                      ),
                      color: _isPanelVisible
                          ? Theme.of(context).colorScheme.secondaryVariant
                          : Colors.transparent,
                      child: FlareActor(
                        Theme.of(context).colorScheme.brightness ==
                                Brightness.light
                            ? 'assets/icons/settings/settings_light.flr'
                            : 'assets/icons/settings/settings_dark.flr',
                        alignment:
                            Directionality.of(context) == TextDirection.ltr
                                ? Alignment.bottomLeft
                                : Alignment.bottomRight,
                        animation: 'Animations',
                        fit: BoxFit.contain,
                        controller: this,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: _buildStack,
      ),
    );
  }
}
