package com.domingoguzman.ecommerce.dto;

import com.domingoguzman.ecommerce.entity.Address;
import com.domingoguzman.ecommerce.entity.Customer;
import com.domingoguzman.ecommerce.entity.Order;
import com.domingoguzman.ecommerce.entity.OrderItem;
import lombok.Data;

import java.util.Set;

@Data
public class Purchase {

    private Customer customer;
    private Address shippingAddress;
    private Address billingAddress;
    private Order order;
    private Set<OrderItem> orderItems;

}
