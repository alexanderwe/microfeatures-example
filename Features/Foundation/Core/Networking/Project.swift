import ProjectDescription
import ProjectDescriptionHelpers

let projectName = "Networking"
let moduleBaseId = "\(workspaceBaseId).networking"

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
	],
	schemes: [],
	additionalFiles: [
		"README.md"
	]
)
