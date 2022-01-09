import ProjectDescription
import ProjectDescriptionHelpers

let workspace = Workspace(
    name: "Microfeature Example",
    projects: [
        "App/iOS",
        "Features/Order",
        "Features/Search",
        "Features/Foundation/ProductAPI",
        "Features/Foundation/Core/Networking"
    ],
    schemes: [],
    additionalFiles: [
        "README.md"
    ]
)
