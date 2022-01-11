import ProjectDescription
import ProjectDescriptionHelpers

let moduleBaseId = "\(workspaceBaseId).iOS"

let project = Project(
	name: "FoodApp iOS",
	targets: [
		Target(
			name: "iOS",
			platform: .iOS,
			product: .app,
			productName: "FoodApp",
			bundleId: moduleBaseId,
			infoPlist: .fixedInfoPlist,
			sources: ["Sources/**"],
			resources: [
				"Resources/**",
			],
			dependencies: [
				.project(target: "Networking", path: .relativeToRoot("Features/Foundation/Core/Networking")),
				.project(target: "ProductAPI", path: .relativeToRoot("Features/Foundation/ProductAPI")),
				.project(target: "Order", path: .relativeToRoot("Features/Order")),
				.project(target: "Search", path: .relativeToRoot("Features/Search")),
				.project(target: "DependencyInjection", path: .relativeToRoot("Features/Foundation/Core/DependencyInjection"))
			]
		),
		Target(
			name: "iOSTests",
			platform: .iOS,
			product: .unitTests,
			bundleId: "\(moduleBaseId).tests",
			infoPlist: .default,
			sources: ["Tests/UnitTests/**/*.swift"],
			dependencies: [
				.target(name: "iOS"),
				.xctest
			]
		),
		Target(
			name: "iOSUITests",
			platform: .iOS,
			product: .uiTests,
			bundleId: "\(moduleBaseId).uitests",
			infoPlist: .default,
			sources: ["Tests/UITests/**/*.swift"],
			dependencies: [
				.target(name: "iOS"),
				.xctest
			]
		)
	],
	schemes: [],
	additionalFiles: [
		"README.md"
	]
)
