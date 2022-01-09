import ProjectDescription
import ProjectDescriptionHelpers

let projectName = "Order"
let moduleBaseId = "\(workspaceBaseId).order"

let project = Project(
	name: projectName,
	targets: [
		Target(
			name: projectName,
			platform: .iOS,
			product: .framework,
			bundleId: moduleBaseId,
			infoPlist: .default,
			sources: ["Sources/**"],
			dependencies: [
				.target(name: "\(projectName)Interface"),
				.project(target: "ProductAPIInterface", path: .relativeToRoot("Features/Foundation/ProductAPI"))
			]
		),
		Target(
			name: "\(projectName)Interface",
			platform: .iOS,
			product: .framework,
			bundleId: "\(moduleBaseId).interface",
			infoPlist: .default,
			sources: ["Interface/**"],
			dependencies: []
		),
		Target(
			name: "\(projectName)Tests",
			platform: .iOS,
			product: .unitTests,
			bundleId: "\(moduleBaseId).tests",
			infoPlist: .default,
			sources: ["Tests/**/*.swift"],
			dependencies: [
				.target(name: projectName),
				.xctest
			]
		),
		Target(
			name: "\(projectName)Example",
			platform: .iOS,
			product: .app,
			bundleId: "\(moduleBaseId).example",
			infoPlist: .fixedInfoPlist,
			sources: ["Example/Sources/**/*.swift"],
			resources: ["Example/Resources/**/*"],
			dependencies: [
				.target(name: projectName)
			]
		),
	],
	schemes: [],
	additionalFiles: [
		"README.md"
	]
)
