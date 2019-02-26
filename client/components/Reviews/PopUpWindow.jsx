import React from 'react';
import styled from 'styled-components';
import ExitCross from '../assets/ExitCross.jsx';
import ReviewsEntry from './ReviewsEntry.jsx';
import StarRating from 'react-star-ratings';

const PopUpWindow = (props) => {
  return (
    <PopUpWrapper toggle={props.toggleOn}>
      <ReviewsNavBar toggleOn={props.toggleOn}>
        <ShoeImgWrapper>
          <ShoeImg src={props.productDetail.product_img} alt={props.productDetail.product_name} />
          <ShoeImgInfo>
            <ShoeName>
              {props.productDetail.product_name}
            </ShoeName>
            <ShoePrice>
              {props.productDetail.price}
            </ShoePrice>
          </ShoeImgInfo>
        </ShoeImgWrapper>
        <ExitButton onClick={props.handleExit}><span><ExitCross /></span></ExitButton>
      </ReviewsNavBar>
      <ReviewsWrapper>
        <ReviewsInnerWrapper>
          <ReviewsSection>
            <ReviewsSummary>
              <AverageStarWrapper>
                <StarRating
                rating={4.25}
                starRatedColor="black"
                numberOfStars={5}
                starDimension="18px"
                starSpacing="1px"
                name="avgRatingProduct"
                />
              </AverageStarWrapper>
              <NumberOfReviewsWrapper>
                {props.count} Reviews
              </NumberOfReviewsWrapper>
              <AverageRatingsWrapper>
                <AvgRateBarBlockWrapper>
                  <AvgBarTitleWrapper>
                    Size
                  </AvgBarTitleWrapper>
                  <AvgBar>
                    <AvgBall ball={(0.8 * 100) + '%'} />
                  </AvgBar>
                  <AvgBarDescriptionWrapper>
                    <div>Runs small</div>
                    <div>Runs big</div>
                  </AvgBarDescriptionWrapper>
                </AvgRateBarBlockWrapper>
                <AvgRateBarBlockWrapper>
                  <AvgBarTitleWrapper>
                    Comfort
                  </AvgBarTitleWrapper>
                  <AvgBar>
                    <AvgBall ball={(0.7 * 100) + '%'} />
                  </AvgBar>
                  <AvgBarDescriptionWrapper>
                    <div>Uncomfortable</div>
                    <div>Very Comfortable</div>
                  </AvgBarDescriptionWrapper>
                </AvgRateBarBlockWrapper>
                <AvgRateBarBlockWrapper>
                  <AvgBarTitleWrapper>
                    Durability
                  </AvgBarTitleWrapper>
                  <AvgBar>
                    <AvgBall ball={(1 * 100) + '%'}/>
                  </AvgBar>
                  <AvgBarDescriptionWrapper>
                    <div>Not Durable</div>
                    <div>Very Durable</div>
                  </AvgBarDescriptionWrapper>
                </AvgRateBarBlockWrapper>
              </AverageRatingsWrapper>
            </ReviewsSummary>
            <ReviewsSearchSort>
              <SearchSortSelectorWrapper>
                <SearchSortSelector>
                  <SearchSortOptions>Sort by: Newest</SearchSortOptions>
                  <SearchSortOptions>Sort by: Most Helpful</SearchSortOptions>
                  <SearchSortOptions>Sort by: Highest to Lowest</SearchSortOptions>
                  <SearchSortOptions>Sort by: Lowest to Highest</SearchSortOptions>
                </SearchSortSelector>
              </SearchSortSelectorWrapper>
            </ReviewsSearchSort>
            <ReviewTable>
              {props.reviews.map((review) => {
                return (
                  <ReviewsEntry review={review} />
                  )
                })}
            </ReviewTable>
          </ReviewsSection>
        </ReviewsInnerWrapper>
      </ReviewsWrapper>
    </PopUpWrapper>
  );
};

const PopUpWrapper = styled.div`
display: block;
position: ${props => props.toggle ? 'fixed' : 'relative'};
margin: 0;
padding: 0;
border: 0;
overflow: scroll;
background: white;
z-index: ${props => props.toggle ? '5' : '0'};
height: ${props => props.toggle ? '100vh' : '0'};
top: 0;
left: 0;
width: 100%;
bottom: auto;
transition: visibility 0.4s ease 0s, top 0.3s ease 0s, opacity 0.4s ease 0s;
`
const ReviewsNavBar = styled.div`
flex: 0 0 auto;
flex-wrap: row wrap;
justify-content: space-between;
box-shadow: inset 0 -1px 0 0 #e5e5e5;
padding: 16px 8px 16px 8px;
z-index: 10;
width: 100%;
height: 79px;
margin: 0;
border: 0;
vertical-align: baseline;
display: flex;
align-items: center;
overflow: hidden;
background-color: white;
visibility: ${props => props.toggleOn ? 'visible' : 'hidden'}
position: fixed;
font-family: 'Helvetica Neue',Helvetica,Verdana,Arial,Helvetica,sans-serif;
`
const ShoeImgWrapper = styled.div`
display: flex;
flex-direction: row;
`
const ShoeImg = styled.img`
max-width: 60px;
max-height: 60px;
`
const ShoeImgInfo = styled.div`
width: 100%;
max-width: calc(100% - 60px);
padding-left: 12px;
padding-right: 12px;
padding-top: 8px;
display: inline-block;
flex-direction: column;
font-family: 'Helvetica Neue',Helvetica,Verdana,Arial,Helvetica,sans-serif;
font-size: 14px;
font-weight: normal;
`
const ShoeName = styled.p`
line-height: 1.714285714285714;
margin: 0;
padding: 0;
border: 0;
font: inherit;
vertical-align: baseline;
display: block;
margin-block-start: 1em;
margin-block-end: 1em;
margin-inline-start: 0px;
margin-inline-end: 0px;
`
const ShoePrice = styled.div`
color: #111;
margin: 0;
padding: 0;
border: 0;
font: inherit;
vertical-align: baseline;
display: block;
text-align: center;
`
const ExitButton = styled.button`
border: none;
cursor: pointer;
justify-content: flex-end;
padding: 16px 7px 2px 7px;
top: 12px;
right: 24px;
position: absolute;
`
const ReviewsWrapper = styled.div`
max-width: 100%;
font-family: 'Helvetica Neue',Helvetica,Verdana,Arial,Helvetica,sans-serif;
font-size: 12px;
scroll-behavior: smooth;
width: 100%;
padding-right: 0;
padding-left: 0;
padding-top: 80px;
`
const ReviewsInnerWrapper = styled.div`
max-width: 1440px;
margin: 0 auto;
padding: 0 24px;
border: 0;
font: inherit;
vertical-align: baseline;
box-sizing: border-box;
display: block;
`
const ReviewsSection = styled.div`
max-width: 1000px;
margin: 0 auto;
padding: 0 24px;
font-family: 'Helvetica Neue',Helvetica,Verdana,Arial,Helvetica,sans-serif;
font-size: 12px;
`
const ReviewsSummary = styled.div`
background: transparent;
border: 0;
padding: 55px 0 0;
margin: 0 auto;
max-width: 1000px;
margin-left: auto;
margin-right: auto;
position: relative;
padding-top: 79px;
text-align: center;
`
const AverageStarWrapper = styled.div`
position: relative;
paddiong-top: 23px;
margin: 0 auto;
`
const NumberOfReviewsWrapper = styled.div`
position: relative;
padding-top: 44px;
font-size: 28px;
text-transform: uppercase;
letter-spacing: 0.05rem;
color: #111;
font-weight: 500;
display: inline-block;
line-height: 1;
margin: 0 5px;
border: 0;
`
const AverageRatingsWrapper = styled.div`
position: relative;
padding-top: 80px;
margin: auto;
flex-direction: row;
justify-content: space-between;
text-align: center;
width: 100%;
display: flex;
float: none;
`
const ReviewsSearchSort = styled.div`
position: relative;
padding: 15px 0;
border-top: 1px solid #E5E5E5;
border-bottom: 1px solid #E5E5E5;
max-width: 1000px;
margin-left: auto;
margin-right: auto;
margin-bottom: 0;
display: block;
margin-top: 20px;
overflow: auto;
`
const SearchSortSelectorWrapper = styled.div`
display: flex;
width: 206px;
text-align: left;
position: relative;
color: #58595b;
flex-direction: row;
`
const SearchSortSelector = styled.select`
display: block;
font-size: 14px;
padding: 0 20px 0 0;
width: 295px;
height: 38px;
outline: none;
border: none;
`
const SearchSortOptions = styled.option`
font-weight: bold;
font-size: 16px;
`
const ReviewTable = styled.div`
position: relative;
`
const AvgRateBarBlockWrapper = styled.div`
position: relative;
width: 25%;
margin-bottom: 18px;
font-size: 11px;
font-weight: bold;
display: flex;
flex-direction: column;
`
const AvgBarTitleWrapper = styled.div`
position: relative;
margin-bottom: 7px;
color: #111;
font-weight: normal;
font-size: 14px;
margin-top: 4px;
display: block;
text-align: left;
`
const AvgBar = styled.div`
position: relative;
margin-bottom: 15px;
background: #EBEBEB;
width: 100%;
border-radius: 10px;
height: 4px;
`
const AvgBall = styled.div`
margin-left: calc(${props => props.ball} - 5px);
background: #111;
border-radius: 50%;
width: 8px;
height: 8px;
position: relative;
top: -2px;
`
const AvgBarDescriptionWrapper = styled.div`
position: relative;
display: flex;
justify-content: space-between;
flex-direction: row;
color: #6D6D6D;
font-weight: normal;
`
export default PopUpWindow;
