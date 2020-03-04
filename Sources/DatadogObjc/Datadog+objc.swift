/*
 * Unless explicitly stated otherwise all files in this repository are licensed under the Apache License Version 2.0.
 * This product includes software developed at Datadog (https://www.datadoghq.com/).
 * Copyright 2019-2020 Datadog, Inc.
 */

import Foundation
import Datadog

@objcMembers
public class DDAppContext: NSObject {
    internal let sdkAppContext: Datadog.AppContext

    // MARK: - Public

    public init(mainBundle: Bundle) {
        self.sdkAppContext = Datadog.AppContext(mainBundle: mainBundle)
    }
}

@objcMembers
public class DDDatadog: NSObject {
    // MARK: - Public

    public static func initialize(appContext: DDAppContext, configuration: DDConfiguration) {
        Datadog.initialize(
            appContext: appContext.sdkAppContext,
            configuration: configuration.sdkConfiguration
        )
    }

    public static var verbosityLevel: DDLogLevel? {
        set {
            switch newValue {
            case .debug?: Datadog.verbosityLevel = .debug
            case .info?: Datadog.verbosityLevel = .info
            case .notice?: Datadog.verbosityLevel = .notice
            case .warn?: Datadog.verbosityLevel = .warn
            case .error?: Datadog.verbosityLevel = .error
            case .critical?: Datadog.verbosityLevel = .critical
            case .none: Datadog.verbosityLevel = nil
            }
        }
        get {
            switch Datadog.verbosityLevel {
            case .debug?: return .debug
            case .info?: return .info
            case .notice?: return .notice
            case .warn?: return .warn
            case .error?: return .error
            case .critical?: return .critical
            case .none: return nil
            }
        }
    }

    public static func setUserInfo(id: String? = nil, name: String? = nil, email: String? = nil) {
        Datadog.setUserInfo(id: id, name: name, email: email)
    }
}
