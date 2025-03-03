# 1.7.0 / 09-27-2021

### Changes

* [BUGFIX] RUM: Fix `DDRUMView` API visibility for Objective-C. See [#583][]
* [FEATURE] Crash Reporting: Add `DatadogCrashReporting`
* [FEATURE] RUM: Add Mobile Vitals. See [#493][] [#514][] [#522][] [#495][]
* [FEATURE] RUM: Add option for renaming instrumented actions. See [#539][]
* [FEATURE] RUM: Add option for tracking events when app is in background. See [#504][] [#537][]
* [FEATURE] Add support for `us3` site. See [#523][]
* [IMPROVEMENT] RUM: Improve RUM <> APM integration. See [#524][] [#575][] [#531][] (Thanks [@jracollins][], [@marcusway][])
* [IMPROVEMENT] RUM: Improve naming for views started with `key:`. See [#534][]
* [IMPROVEMENT] RUM: Improve actions instrumentation. See [#509][] [#545][] [#547][]
* [IMPROVEMENT] RUM: Sanitize custom timings for views. See [#525][]
* [IMPROVEMENT] Do not retry uploading events if Client Token is invalid. See [#535][]

# 1.6.0 / 06-09-2021

### Changes

* [BUGFIX] Trace: Fix `[configuration trackUIKitRUMViews]` not working properly in Obj-c. See [#419][]
* [BUGFIX] Trace: Make `tracePropagationHTTPHeaders` available in Obj-c. See [#421][] (Thanks [@ben-yolabs][])
* [BUGFIX] RUM: Fix RUM Views auto-instrumentation issue on iOS 11. See [#474][]
* [FEATURE] RUM: Support adding custom attributes for auto-instrumented RUM Resources. See [#473][]
* [FEATURE] Trace: Add scrubbing APIs for redacting auto-instrumented spans. See [#481][]
* [IMPROVEMENT] RUM: Add "VIEW NAME" attribute to RUM Views. See [#318][]
* [IMPROVEMENT] RUM: Views cannot be now dropped using view event mapper. See [#415][]
* [IMPROVEMENT] RUM: Improve presentation of errors sent with `Logger`. See [#423][]
* [IMPROVEMENT] Trace: Improve presentation of errors sent with `span.log()`. See [#431][]
* [IMPROVEMENT] Add support for extra user attributes in Obj-c. See [#444][]
* [IMPROVEMENT] Trace: Add `foreground_duration` and `is_background` information to network spans. See [#436][]
* [IMPROVEMENT] RUM: Views will now automatically stop when the app leaves foreground. See [#479][]
* [IMPROVEMENT] `DDURLSessionDelegate` can now be initialized before starting SDK. See [#483][]

# 1.5.2 / 04-13-2021

### Changes

* [BUGFIX] Add missing RUM Resource APIs to RUM for Objc. See [#447][] (Thanks [@sdejesusF][])
* [BUGFIX] Fix eventual `swiftlint` error during `carthage` builds. See [#450][]
* [IMPROVEMENT] Improve cocoapods installation by not requiring `!use_frameworks`. See [#451][]

# 1.5.1 / 03-11-2021

### Changes

* [BUGFIX] Carthage XCFrameworks support. See [#439][]

# 1.5.0 / 03-04-2021

### Changes

* [BUGFIX] Fix baggage items propagation issue for `Span`. See [#365][] (Thanks [@philtre][])
* [FEATURE] Add set of scrubbing APIs for redacting and dropping particular RUM Events. See [#367][]
* [FEATURE] Add support for GDPR compliance with new `Datadog.set(trackingConsent:)` API. See [#335][]
* [FEATURE] Add `Global.rum.addTiming(name:)` API for marking custom tming events in RUM Views. See [#323][]
* [FEATURE] Add support for Alamofire networking with `DatadogAlamofireExtension`. See [#340][]
* [FEATURE] Add configuration of data upload frequency and paylaod size with `.set(batchSize:)` and `.set(uploadFrequency:)` APIs. See [#358][]
* [FEATURE] Add convenient `.setError(_:)` API for setting `Error` on `Span`. See [#390][]
* [IMPROVEMENT] Improve `DATE` accurracy (with NTP time sync) for all data send from the SDK. See [#327][]
* [IMPROVEMENT] Improve App Launch Time metric accurracy. See [#381][]

# 1.4.1 / 01-18-2021

### Changes

* [BUGFIX] Fix app extension compilation issue for `UIApplication.shared` symbol. See [#370][] (Thanks [@SimpleApp][])

# 1.4.0 / 12-14-2020

### Changes

* [BUGFIX] Fix crash when `serviceName` contains space characters. See [#317][] (Thanks [@philtre][])
* [BUGFIX] Fix issue with data uploads when battery status is `.unknown`. See [#320][]
* [BUGFIX] Fix compilation issue for Mac Catalyst. See [#277][] (Thanks [@Hengyu][])
* [FEATURE] RUM: Add RUM monitoring feature (manual and auto instrumentation)
* [FEATURE] Add single `.set(endpoint:)` API to configure all Datadog endpoints. See [#322][]
* [FEATURE] Add support for GovCloud endpoints. See [#235][]
* [FEATURE] Add support for extra user attributes. See [#315][]
* [FEATURE] Logs: Add `error: Error` attribute to logging APIs. See [#303][] (Thanks [@sdejesusF][])
* [FEATURE] Trace: Add `span.setActive()` API for indirect referencing Spans. See [#187][]
* [FEATURE] Trace: Add `Global.sharedTracer.startRootSpan(...)` API. See [#236][]
* [IMPROVEMENT] Trace: Add auto instrumentation for `URLSessionTasks` created with no completion handler. See [#262][]
* [IMPROVEMENT] Extend allowed characters set for the `environment` value. See [#246][] (Thanks [@sdejesusF][])
* [IMPROVEMENT] Improve data upload performance. See [#249][]


# 1.3.1 / 08-14-2020

### Changes

* [BUGFIX] Fix SPM compilation issue for DatadogObjC. See [#220][] (Thanks [@TsvetelinVladimirov][])
* [BUGFIX] Fix compilation issue in Xcode 11.3.1. See [#217][] (Thanks [@provTheodoreNewell][])

# 1.3.0 / 08-03-2020

### Changes

* [FEATURE] Trace: Add tracing feature following the Open Tracing spec

# 1.2.4 / 07-17-2020

### Changes

* [BUGFIX] Logs: Fix out-of-memory crash on intensive logging. See [#185][] (Thanks [@hyling][])

# 1.2.3 / 07-15-2020

### Changes

* [BUGFIX] Logs: Fix memory leaks in logs upload. See [#180][] (Thanks [@hyling][])
* [BUGFIX] Fix App Store Connect validation issue for `DatadogObjC`. See [#182][] (Thanks [@hyling][])

# 1.2.2 / 06-12-2020

### Changes

* [BUGFIX] Logs: Fix occasional logs malformation. See [#133][]

# 1.2.1 / 06-09-2020

### Changes

* [BUGFIX] Fix `ISO8601DateFormatter` crash on iOS 11.0 and 11.1. See [#129][] (Thanks [@lgaches][], [@Britton-Earnin][])

# 1.2.0 / 05-22-2020

### Changes

* [BUGFIX] Logs: Fixed family of `NWPathMonitor` crashes. See [#110][] (Thanks [@LeffelMania][], [@00FA9A][], [@jegnux][])
* [FEATURE] Logs: Change default `serviceName` to app bundle identifier. See [#102][]
* [IMPROVEMENT] Logs: Add milliseconds precision. See [#96][] (Thanks [@flobories][])
* [IMPROVEMENT] Logs: Deliver logs faster in app extensions. See [#84][] (Thanks [@lmramirez][])
* [OTHER] Logs: Change default `source` to `"ios"`. See [#111][]
* [OTHER] Link SDK as dynamic framework in SPM. See [#82][]

# 1.1.0 / 04-21-2020

### Changes

* [BUGFIX] Fix "Missing required module 'Datadog_Private'" Carthage error. See [#80][]
* [IMPROVEMENT] Logs: Sync logs time with server. See [#65][]

# 1.0.2 / 04-08-2020

### Changes

* [BUGFIX] Fix "'module.modulemap' should be inside the 'include' directory" Carthage error. See [#73][] (Thanks [@joeydong][])

# 1.0.1 / 04-07-2020

### Changes

* [BUGFIX] Fix "out of memory" crash. See [#64][] (Thanks [@lmramirez][])

# 1.0.0 / 03-31-2020

### Changes

* [FEATURE] Logs: Add logging feature

<!--- The following link definition list is generated by PimpMyChangelog --->
[#64]: https://github.com/DataDog/dd-sdk-ios/issues/64
[#65]: https://github.com/DataDog/dd-sdk-ios/issues/65
[#73]: https://github.com/DataDog/dd-sdk-ios/issues/73
[#80]: https://github.com/DataDog/dd-sdk-ios/issues/80
[#82]: https://github.com/DataDog/dd-sdk-ios/issues/82
[#84]: https://github.com/DataDog/dd-sdk-ios/issues/84
[#96]: https://github.com/DataDog/dd-sdk-ios/issues/96
[#102]: https://github.com/DataDog/dd-sdk-ios/issues/102
[#110]: https://github.com/DataDog/dd-sdk-ios/issues/110
[#111]: https://github.com/DataDog/dd-sdk-ios/issues/111
[#129]: https://github.com/DataDog/dd-sdk-ios/issues/129
[#133]: https://github.com/DataDog/dd-sdk-ios/issues/133
[#180]: https://github.com/DataDog/dd-sdk-ios/issues/180
[#182]: https://github.com/DataDog/dd-sdk-ios/issues/182
[#185]: https://github.com/DataDog/dd-sdk-ios/issues/185
[#187]: https://github.com/DataDog/dd-sdk-ios/issues/187
[#217]: https://github.com/DataDog/dd-sdk-ios/issues/217
[#220]: https://github.com/DataDog/dd-sdk-ios/issues/220
[#235]: https://github.com/DataDog/dd-sdk-ios/issues/235
[#236]: https://github.com/DataDog/dd-sdk-ios/issues/236
[#246]: https://github.com/DataDog/dd-sdk-ios/issues/246
[#249]: https://github.com/DataDog/dd-sdk-ios/issues/249
[#262]: https://github.com/DataDog/dd-sdk-ios/issues/262
[#277]: https://github.com/DataDog/dd-sdk-ios/issues/277
[#303]: https://github.com/DataDog/dd-sdk-ios/issues/303
[#315]: https://github.com/DataDog/dd-sdk-ios/issues/315
[#317]: https://github.com/DataDog/dd-sdk-ios/issues/317
[#318]: https://github.com/DataDog/dd-sdk-ios/issues/318
[#320]: https://github.com/DataDog/dd-sdk-ios/issues/320
[#322]: https://github.com/DataDog/dd-sdk-ios/issues/322
[#323]: https://github.com/DataDog/dd-sdk-ios/issues/323
[#327]: https://github.com/DataDog/dd-sdk-ios/issues/327
[#335]: https://github.com/DataDog/dd-sdk-ios/issues/335
[#340]: https://github.com/DataDog/dd-sdk-ios/issues/340
[#358]: https://github.com/DataDog/dd-sdk-ios/issues/358
[#365]: https://github.com/DataDog/dd-sdk-ios/issues/365
[#367]: https://github.com/DataDog/dd-sdk-ios/issues/367
[#370]: https://github.com/DataDog/dd-sdk-ios/issues/370
[#381]: https://github.com/DataDog/dd-sdk-ios/issues/381
[#390]: https://github.com/DataDog/dd-sdk-ios/issues/390
[#415]: https://github.com/DataDog/dd-sdk-ios/issues/415
[#419]: https://github.com/DataDog/dd-sdk-ios/issues/419
[#421]: https://github.com/DataDog/dd-sdk-ios/issues/421
[#423]: https://github.com/DataDog/dd-sdk-ios/issues/423
[#431]: https://github.com/DataDog/dd-sdk-ios/issues/431
[#436]: https://github.com/DataDog/dd-sdk-ios/issues/436
[#439]: https://github.com/DataDog/dd-sdk-ios/issues/439
[#444]: https://github.com/DataDog/dd-sdk-ios/issues/444
[#447]: https://github.com/DataDog/dd-sdk-ios/issues/447
[#450]: https://github.com/DataDog/dd-sdk-ios/issues/450
[#451]: https://github.com/DataDog/dd-sdk-ios/issues/451
[#473]: https://github.com/DataDog/dd-sdk-ios/issues/473
[#474]: https://github.com/DataDog/dd-sdk-ios/issues/474
[#479]: https://github.com/DataDog/dd-sdk-ios/issues/479
[#481]: https://github.com/DataDog/dd-sdk-ios/issues/481
[#483]: https://github.com/DataDog/dd-sdk-ios/issues/483
[#493]: https://github.com/DataDog/dd-sdk-ios/issues/493
[#495]: https://github.com/DataDog/dd-sdk-ios/issues/495
[#504]: https://github.com/DataDog/dd-sdk-ios/issues/504
[#509]: https://github.com/DataDog/dd-sdk-ios/issues/509
[#514]: https://github.com/DataDog/dd-sdk-ios/issues/514
[#522]: https://github.com/DataDog/dd-sdk-ios/issues/522
[#523]: https://github.com/DataDog/dd-sdk-ios/issues/523
[#524]: https://github.com/DataDog/dd-sdk-ios/issues/524
[#525]: https://github.com/DataDog/dd-sdk-ios/issues/525
[#531]: https://github.com/DataDog/dd-sdk-ios/issues/531
[#534]: https://github.com/DataDog/dd-sdk-ios/issues/534
[#535]: https://github.com/DataDog/dd-sdk-ios/issues/535
[#537]: https://github.com/DataDog/dd-sdk-ios/issues/537
[#539]: https://github.com/DataDog/dd-sdk-ios/issues/539
[#545]: https://github.com/DataDog/dd-sdk-ios/issues/545
[#547]: https://github.com/DataDog/dd-sdk-ios/issues/547
[#575]: https://github.com/DataDog/dd-sdk-ios/issues/575
[#583]: https://github.com/DataDog/dd-sdk-ios/issues/583
[@00FA9A]: https://github.com/00FA9A
[@Britton-Earnin]: https://github.com/Britton-Earnin
[@Hengyu]: https://github.com/Hengyu
[@LeffelMania]: https://github.com/LeffelMania
[@SimpleApp]: https://github.com/SimpleApp
[@TsvetelinVladimirov]: https://github.com/TsvetelinVladimirov
[@ben-yolabs]: https://github.com/ben-yolabs
[@flobories]: https://github.com/flobories
[@hyling]: https://github.com/hyling
[@jegnux]: https://github.com/jegnux
[@joeydong]: https://github.com/joeydong
[@jracollins]: https://github.com/jracollins
[@lgaches]: https://github.com/lgaches
[@lmramirez]: https://github.com/lmramirez
[@marcusway]: https://github.com/marcusway
[@philtre]: https://github.com/philtre
[@provTheodoreNewell]: https://github.com/provTheodoreNewell
[@sdejesusF]: https://github.com/sdejesusF