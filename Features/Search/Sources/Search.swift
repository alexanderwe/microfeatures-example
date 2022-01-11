import ProductAPIInterface
import SearchInterface
import DependencyInjection


public final class SearchService: SearchAPI {
    
    @Injected var productAPI: ProductAPI
    
    public init() {}
}
