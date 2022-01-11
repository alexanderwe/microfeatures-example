//
//  Order.swift
//  Order
//
//  Created by Alexander Weiß on 09.01.22.
//

import OrderInterface
import ProductAPIInterface
import DependencyInjection

public final class OrderService: OrderAPI {

    @Injected var productAPI: ProductAPI
    
    public init() {}
}

