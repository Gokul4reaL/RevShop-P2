package com.revature.product.model;
import jakarta.persistence.*;
import lombok.*;


@Table(name = "Reviews")
@Data
/*
 * @Getter
 * 
 * @Setter
 */
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Entity
public class Review {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ReviewID")
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "Product_id", nullable = false)
    private Product product;

    @Column(name = "User_id", nullable = false)
    private String userId;

    @Column(name = "Rating", nullable = false)
    private Integer rating;

    @Column(name = "ReviewText")
    private String reviewText;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public Integer getRating() {
		return rating;
	}

	public void setRating(Integer rating) {
		this.rating = rating;
	}

	public String getReviewText() {
		return reviewText;
	}

	public void setReviewText(String reviewText) {
		this.reviewText = reviewText;
	}
    
}