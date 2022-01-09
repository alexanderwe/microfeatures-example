//
//  InfoPlist+Fixed.swift
//  ProjectDescriptionHelpers
//
//  Created by Weiss, Alexander on 09.01.22.
//

import ProjectDescription

extension InfoPlist {
	public static var fixedInfoPlist: Self {
		.extendingDefault(with: [
			"UILaunchStoryboardName": .string("LaunchScreen"),
			"UIApplicationSceneManifest": .dictionary(
				[
					"UIApplicationSupportsMultipleScenes": .boolean(false),
					"UISceneConfigurations": .dictionary(
						[
							"UIWindowSceneSessionRoleApplication": .array(
								[
									.dictionary(
										[
											"UISceneConfigurationName": .string("Default Configuration"),
											"UISceneDelegateClassName": .string("$(PRODUCT_MODULE_NAME).SceneDelegate")
										]
									)
								]
							)
						]
					)
				]
			)
		])
	}
}