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
		Product Dress = new Product("P1234", "���� ������ ������ ������", 26000);
		Dress.setDescription("��");
		Dress.setCategory("Dress");
		Dress.setManufacturer("SeungPang");
		Dress.setUnitsInStock(1000);
		Dress.setCondition("New");
		Dress.setFilename("image9.png");

		Product Dresss = new Product("P1235", "�˺극 üũ ������ �ĵ� ���� ����", 19800);
		Dresss.setDescription("��");
		Dresss.setCategory("Dresss");
		Dresss.setManufacturer("SeungPang");
		Dresss.setUnitsInStock(1000);
		Dresss.setCondition("Refurbished");
		Dresss.setFilename("image10.png");

		Product Wallet = new Product("P1236", "[���̱����] ���������� SK4AH17KH", 54000);
		Wallet.setDescription("����");
		Wallet.setCategory("Wallet");
		Wallet.setManufacturer("SeungPang");
		Wallet.setUnitsInStock(1000);
		Wallet.setCondition("Old");
		Wallet.setFilename("image11.png");

		Product Sopa = new Product("P1237", "�ڳ�Ʈ ���Ǹ� 3�ο� ǮĿ�� �к긯 ���� ��������", 239000);
		Sopa.setDescription("����");
		Sopa.setCategory("Sopa");
		Sopa.setManufacturer("SeungPang");
		Sopa.setUnitsInStock(1000);
		Sopa.setCondition("New");
		Sopa.setFilename("image13.png");

		Product LED = new Product("P1238", "�������ϴ� �ô��ý��� ȭ��Ʈ ��� LED50W õ���/�Ǹ�����Ʈ", 18900);
		LED.setDescription("����");
		LED.setCategory("LED");
		LED.setManufacturer("SeungPang");
		LED.setUnitsInStock(1000);
		LED.setCondition("Refurbished");
		LED.setFilename("image14.png");

		Product Light = new Product("P1239", "�ڴ� LED ����Ʈ ���� ������ KL200", 13180);
		Light.setDescription("����");
		Light.setCategory("Light");
		Light.setManufacturer("SeungPang");
		Light.setUnitsInStock(1000);
		Light.setCondition("Old");
		Light.setFilename("image15.png");
		
		Product massage = new Product("P1240", "Ŭ�� �̴� ��������S SP-308W", 49900);
		massage.setDescription("������");
		massage.setCategory("massage");
		massage.setManufacturer("SeungPang");
		massage.setUnitsInStock(1000);
		massage.setCondition("New");
		massage.setFilename("image17.png");

		Product Film = new Product("P1241", "������ �̹��4 ��ȣ�ʸ� (3��1��Ʈ)", 2000);
		Film.setDescription("�ʸ�");
		Film.setCategory("Film");
		Film.setManufacturer("SeungPang");
		Film.setUnitsInStock(1000);
		Film.setCondition("Refurbished");
		Film.setFilename("image18.png");

		Product Refrigerator = new Product("P1242", "ĳ���� Ŭ������ 168L �Ϲݳ���� CRF-TD168SDS", 231000);
		Refrigerator.setDescription("����");
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
