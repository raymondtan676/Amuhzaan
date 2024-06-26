import { useEffect, useState } from "react"
import { useDispatch, useSelector } from "react-redux"
import { useParams, useHistory } from "react-router-dom"
import { fetchProduct, getProduct } from "../../store/products"
import { addCartItem } from "../../store/cart_items";
import { getReviews } from "../../store/reviews"
import ProductReviewForm from "./ProductReviewForm";
import ReviewIndexItem from "./ReviewIndexItem";
import DisplayRating from "./DisplayRating";
import primeLogo from '../../assets/prime-logo.png';
import "./ProductShow.css";
import Modal from './Modal';

// path = /products/:productId
const ProductShow = () => {
    const { productId } = useParams();
    const dispatch = useDispatch();
    const history = useHistory(); // equivalent to useNavigate in v6
    const sessionUser = useSelector(state => state.session.user);
    const product = useSelector(getProduct(productId));
    const [quantity, setQuantity] = useState(1)
    const reviews = useSelector(getReviews)
    const productReviews = reviews.filter(review => review.productId === Number(productId))
    const [showModal, setShowModal] = useState(false);

    useEffect(() => {
        // fetchProduct will include reviews in json/jbuilder response
        dispatch(fetchProduct(productId));
    }, [])

    if (!product) return <h1>loading...</h1>

    const price = parseFloat(product.price).toFixed(2).toString();
    const [whole, fraction] = price.split('.');

    const today = new Date();
    const freeDelivery = new Date(today);
    const primeDelivery = new Date (today);
    freeDelivery.setDate(today.getDate() + 5);
    primeDelivery.setDate(today.getDate() + 2);
    const opts = { year: 'numeric', month: 'long', day: 'numeric' };
    const formattedFreeDate = freeDelivery.toLocaleString('en-US', opts);
    const formattedPrimeDate = primeDelivery.toLocaleString('en-US', opts);

    const options = []
    for (let i = 1; i <= 10; i++) {
        options.push(<option value={i}>{i}</option>);
    }

    const handleCartClick = e => {
        e.preventDefault();

        if (!sessionUser) {
            history.push("/login");
        } else {
            const user_id = sessionUser.id;
            const product_id = productId;
            const cartProduct = { user_id, product_id, quantity };
            dispatch(addCartItem(cartProduct));
        }
    }

    const handleBuyClick = e => {
        e.preventDefault()

        if (!sessionUser) {
            history.push("/login")
        } else {
            history.push("/checkout")
        }
    }

    let totalRating = 0
    productReviews.forEach(review => {
        totalRating += review.rating
    });
    const avgRating = totalRating / (productReviews.length)

    return (
        <>
            <div className="product-show-container">
                <div className="show-image">
                    <img className="product-image" src={product.photoUrl} alt="product"/>
                </div>

                <div className="product-info">
                    <h1 className="show-title">{product.name}</h1>
                    <div className="show-avg-rating">
                        <span className="avg-rating-text">{avgRating || null}</span> 
                        <DisplayRating rating={avgRating}/>
                    </div>
                    <div className="show-price">
                        <span className="price-symbol">$</span>
                        <span className="price-whole">{whole}</span>
                        <span className="price-fraction">{fraction}</span>
                    </div>
                    <h1 className="product-about">About this item</h1>
                    <ul className="feature-list">
                        {product.feature.map(feature => <li>{feature}</li>)}
                    </ul>
                </div>

                <div className="purchase-panel">
                    <div className="show-price">
                        <span className="price-symbol">$</span>
                        <span className="price-whole">{whole}</span>
                        <span className="price-fraction">{fraction}</span>
                    </div>
                    <img className="prime-logo" src={primeLogo} alt="prime"/>
                    <br/>
                    <p className="delivery-text">FREE delivery <span className="delivery-date">{formattedFreeDate}</span> </p>
                    <p className="delivery-text">Or fastest delivery <span className="delivery-date">{formattedPrimeDate}</span> </p>
                    <br/>
                    <p className="in-stock">In Stock</p>
                    Qty: 
                    <select onChange={e => setQuantity(e.target.value)}>
                        {options}
                    </select>
                    <button className="add-to-cart-btn panel-button" onClick={handleCartClick}>Add to Cart</button>
                    <br/>
                    <button className="buy-now-btn panel-button" onClick={handleBuyClick}>Buy Now</button>
                    <p className="a-size-small">
                        <span className="gray">Payment</span> Secure Transaction
                    </p>
                    <p className="a-size-small">
                        <span className="gray">Ships from</span> Amuhzaan
                    </p>
                    <p className="a-size-small">
                        <span className="gray">Ships from</span> Amuhzaan
                    </p>
                    <p className="a-size-small">
                        <span className="gray">Returns</span> 
                        Eligible for Return, Refund or Replacement within 30 days of receipt
                    </p>
                </div>
                <div className="description-container">
                    <h3>Product Description</h3>
                    <p>{product.description}</p>
                </div>
            </div>
            <hr></hr>
            <div className="reviews-container">
                <div className="review-summary">
                    <h2 className="summary-header">Customer Reviews</h2>
                    <div className="summary-rating-widget">
                        <DisplayRating rating={avgRating} large="true"/>
                        <span className="summary-text">{avgRating || 0} out of 5</span>
                    </div>
                    <div>
                        {/* <button type="button" className="btn btn-info btn-lg" onClick={() => setShowModal(true)}>Write a Review</button>

                        <Modal show={showModal} onClose={() => setShowModal(false)}>
                            <ProductReviewForm product={product} />
                        </Modal> */}
                    </div>
                </div>
                <div className="customer-reviews">
                    <h1 className="review-section-header">Top reviews from the United States</h1>
                    {productReviews.map(review => <ReviewIndexItem review={review} />)}
                    <ProductReviewForm product={product} />
                </div>
            </div>
        </>
    )
}

export default ProductShow