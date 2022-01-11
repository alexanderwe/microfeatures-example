//
//  ProductAPIImpl.swift
//  ProductAPI
//
//  Created by Alexander Weiß on 09.01.22.
//

import ProductAPIInterface
import NetworkingInterface
import DependencyInjection

public final class ProductAPIService: ProductAPI {

    @Injected var networkingAPI: NetworkingAPI

    public init() { }
}


