import ProjectDescription
import ProjectDescriptionHelpers

let projectName = "DependencyInjection"
let moduleBaseId = "\(workspaceBaseId).dependency-injection"

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
