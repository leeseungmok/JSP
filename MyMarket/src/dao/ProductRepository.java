package dao;

import java.util.ArrayList;

import dto.Product;

public class ProductRepository {

	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	private static ProductRepository instance = new ProductRepository();
	
	public static ProductRepository getInstance() {
		return instance;
	}
    public void addProduct(Product product) {
    	listOfProducts.add(product);
    }

	public ProductRepository() {
		Product Dress = new Product("P1234", "꼰스 프리덤 반집업 맨투맨", 26000);
		Dress.setDescription("옷");
		Dress.setCategory("Dress");
		Dress.setManufacturer("SeungPang");
		Dress.setUnitsInStock(1000);
		Dress.setCondition("New");
		Dress.setFilename("image9.png");

		Product Dresss = new Product("P1235", "옹브레 체크 오버핏 후드 긴팔 셔츠", 19800);
		Dresss.setDescription("옷");
		Dresss.setCategory("Dresss");
		Dresss.setManufacturer("SeungPang");
		Dresss.setUnitsInStock(1000);
		Dresss.setCondition("Refurbished");
		Dresss.setFilename("image10.png");

		Product Wallet = new Product("P1236", "[루이까또즈] 남성반지갑 SK4AH17KH", 54000);
		Wallet.setDescription("지갑");
		Wallet.setCategory("Wallet");
		Wallet.setManufacturer("SeungPang");
		Wallet.setUnitsInStock(1000);
		Wallet.setCondition("Old");
		Wallet.setFilename("image11.png");

		Product Sopa = new Product("P1237", "자네트 세실리 3인용 풀커버 패브릭 소파 스툴포함", 239000);
		Sopa.setDescription("가구");
		Sopa.setCategory("Sopa");
		Sopa.setManufacturer("SeungPang");
		Sopa.setUnitsInStock(1000);
		Sopa.setCondition("New");
		Sopa.setFilename("image13.png");

		Product LED = new Product("P1238", "조명에반하다 올뉴시스템 화이트 방등 LED50W 천장등/실링라이트", 18900);
		LED.setDescription("전등");
		LED.setCategory("LED");
		LED.setManufacturer("SeungPang");
		LED.setUnitsInStock(1000);
		LED.setCondition("Refurbished");
		LED.setFilename("image14.png");

		Product Light = new Product("P1239", "코닥 LED 스마트 무선 센서등 KL200", 13180);
		Light.setDescription("전등");
		Light.setCategory("Light");
		Light.setManufacturer("SeungPang");
		Light.setUnitsInStock(1000);
		Light.setCondition("Old");
		Light.setFilename("image15.png");
		
		Product massage = new Product("P1240", "클럭 미니 마사지기S SP-308W", 49900);
		massage.setDescription("마사지");
		massage.setCategory("massage");
		massage.setManufacturer("SeungPang");
		massage.setUnitsInStock(1000);
		massage.setCondition("New");
		massage.setFilename("image17.png");

		Product Film = new Product("P1241", "샤오미 미밴드4 보호필름 (3매1세트)", 2000);
		Film.setDescription("필름");
		Film.setCategory("Film");
		Film.setManufacturer("SeungPang");
		Film.setUnitsInStock(1000);
		Film.setCondition("Refurbished");
		Film.setFilename("image18.png");

		Product Refrigerator = new Product("P1242", "캐리어 클라윈드 168L 일반냉장고 CRF-TD168SDS", 231000);
		Refrigerator.setDescription("가구");
		Refrigerator.setCategory("Refrigerator");
		Refrigerator.setManufacturer("SeungPang");
		Refrigerator.setUnitsInStock(1000);
		Refrigerator.setCondition("Old");
		Refrigerator.setFilename("image19.png");
		

		listOfProducts.add(Dress);
		listOfProducts.add(Dresss);
		listOfProducts.add(Wallet);
		listOfProducts.add(Sopa);
		listOfProducts.add(LED);
		listOfProducts.add(Light);
		listOfProducts.add(massage);
		listOfProducts.add(Film);
		listOfProducts.add(Refrigerator);
	}
	
	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}

	public Product getProductById(String productId) {
		Product productById = null;

		for (int i = 0; i < listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if (product != null && product.getProductId() != null && product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;
	}
	
	public ArrayList<Product> addProduct() {
		return listOfProducts;
	}

}
