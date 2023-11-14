import { BrowserRouter, Routes, Route, Navigate, createBrowserRouter, createRoutesFromElements, RouterProvider } from "react-router-dom";
// backend
import LayoutOne from "./component/layout/LayoutOne";
import HomePage from "./page/home/HomePage";
import CustomerPage from "./page/customer/CustomerPage";
import CategoryPage from "./page/category/CategoryPage";
import ProductPage from "./page/product/ProductPage";
import User from "./page/user/User";
import PaymentMethodPage from "./page/payment_method/PaymentMethodPage";
import OrderStatusPage from "./page/order_status/OrderStatusPage";
import CartPage from "./page/cart/CartPage";
import "./App.css";
import LoginPage from "./page/auth/LoginPage";
import RegisterPage from "./page/auth/RegisterPage";
import WishList from "./page/wishlist/Wishlist";
import OrderPage from "./page/order/OrderPage";

// website
import Index from "./web-site/Index";


import { useEffect } from "react";
function App() {
  const isLogin = localStorage.getItem("is_login") == "1"; // true

  useEffect(()=>{
   console.log(window.location.pathname)
  },[window.location.pathname])

  const is_dashboard = window.location.pathname.includes("dashboard")


  return (
    <BrowserRouter basename="/">
            {!is_dashboard && <Routes>
                <Route path="/" element={<Index/>} />
              </Routes>}

            {is_dashboard &&
              <div>
                {!isLogin ? (
                  <Routes>
                    <Route path="dashboard" element={<LoginPage />} >
                      <Route path="*" element={<Navigate to="/dashboard/login" />} />
                      <Route path="login" element={<LoginPage />} />
                      <Route path="register" element={<RegisterPage />} />
                    </Route>
                  </Routes>
                ) : (
                  <LayoutOne>
                    <Routes>
                      <Route path="dashboard" >
                          <Route path="" element={<HomePage />} />
                          <Route path="customer" element={<CustomerPage />} />
                          <Route path="category" element={<CategoryPage />} />
                          <Route path="user" element={<User />} />
                          <Route path="product" element={<ProductPage />} />
                          <Route path="payment-method" element={<PaymentMethodPage />} />
                          <Route path="order-status" element={<OrderStatusPage />} />
                          <Route path="cart" element={<CartPage />} />
                          <Route path="wishlist" element={<WishList />} />
                          <Route path="order" element={<OrderPage />} />
                          
                          <Route path="*" element={<h1>Route Not Found!</h1>} />
                      </Route>
                    </Routes>
                  </LayoutOne>
                )
                }
              </div>
          }
    </BrowserRouter>
  );
}
export default App;
