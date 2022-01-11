//
//  AppDelegate+Injection
//  iOS
//
//  Created by Alexander Weiß on 09.01.22.
//

import Foundation

import NetworkingInterface
import Networking
import ProductAPIInterface
import ProductAPI
import Order
import OrderInterface
import Search
import SearchInterface
import DependencyInjection

 extension Resolver: ResolverRegistering {
 	public static func registerAllServices() {

        register { NetworkingService() }
            .implements(NetworkingAPI.self)
        
        register { ProductAPIService() }
            .implements(ProductAPI.self)
        
 		register { OrderService() }
 			.implements(OrderAPI.self)

 		register { SearchService() }
 			.implements(SearchAPI.self)

 	}
 }
