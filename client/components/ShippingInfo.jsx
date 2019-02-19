import React from 'react';
import styled from 'styled-components';

const ShippingInfoWrapper = styled.div`
  width: 369px;
`

const ShippingInfo = (props) => {
  return (
    <ShippingInfoWrapper>
      Free standard shipping and 30-day free returns, only with NikePlus. 
      <span> <a href=''>Learn more.</a></span>
      <span> <a href=''>Return policy exclusions apply.</a></span>
      <br />
      <br />
      <li>Standard / Arrives 2-4 Business Days</li>
      <li>Two-Day / Arrives 2-3 Business Days</li>
      <li>Next-Day / Arrives 1-2 Business Days</li>
    </ShippingInfoWrapper>
  )
}

export default ShippingInfo;