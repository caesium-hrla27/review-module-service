import React from 'react';
import styled from 'styled-components';

const ReviewsEntryBlockWrapper = styled.div`
display: flex;
position: relative;
padding-top: 60px;
padding-bottom: 60px;
width: auto;
height: auto;
box-shadow: inset 0 -1px 0 0 #e5e5e5;
`
const RatingSubBlockWrapper = styled.div`
position: relative;
display: block;
flex-direction: column;
width: 30%;
height: auto;
padding-right: 60px;
font-family: 'Helvetica Neue',Helvetica,Verdana,Arial,Helvetica,sans-serif;
`
const ReviewEntryStarWrapper = styled.div`
position: relative;
margin-bottom: 18px;
`

const RateBarBlockWrapper = styled.div`
position: relative;
margin-bottom: 18px;
font-size: 11px;
display: block;
`

const BarTitleWrapper = styled.div`
position: relative;
margin-bottom: 7px;
color: #111;
font-weight: normal;
font-size: 14px;
margin-top: 4px;
display: block;
`

const Bar = styled.div`
position: relative;
margin-bottom: 15px;
background: #EBEBEB;
width: 100%;
border-radius: 10px;
height: 4px;
`

const Ball = styled.div`
margin-left: calc(${props => props.ball} - 5px);
background: #111;
border-radius: 50%;
width: 8px;
height: 8px;
position: relative;
top: -2px;
`

const BarDescriptionWrapper = styled.div`
position: relative;
justify-content: space-between;
flex-direction: row;
display: flex;
color: #6D6D6D;
`

const Description = styled.div`
width: 48%;
font-size: 12px;
font-weight: normal;
white-space: nowrap;
color: #6D6D6D;
margin-top: 7px;
position: relative;
top: -15pdx;

`

const ReviewTitleCommentWrapper = styled.div`
display: block;
position: relative;
width: 100%;
`

const TitleWrapper = styled.div`
position: relative;
display: block;
font-size: 14px;
font-weight: bold;
font-family: “Helvetica Neue”,Helvetica,Arial,sans-serif;
color: #111;
line-height: 1.6;
text-transform: capitalize;
margin: 0;
padding: 0;
border: 0;
vertical-align: baseline;
`

const CommentWrapper = styled.div`
position: relative;
width: 100%;
font-size: 14px;
line-height: 1.7;
color: #111;
margin-top: 5px;
word-wrap: break-word;
padding: 0;
border: 0;
display: block;
`

const Spacer = styled.div`
overflow: auto;
margin: 30px 0 30px -4px;
display: block;

`

const UserInfoSubBlockWrapper = styled.div`
position: relative;
margin: 0;
padding: 0;
border: 0;
display: block;
`

const UserInfoWrapper = styled.div`
width: 70%;
text-align: left;
line-height: 1.8;
margin-bottom: 1rem;
color: #999;
display: block;
`

const VoteWrapper = styled.ul`
display: block;
margin-left: 30%;
list-style: none;
margin-block-start: 1em;
margin-block-end: 1em;
margin-inline-start: 0px;
margin-inline-end: 0px;
padding-inline-start: 40px;
`
const VoteList = styled.li`
width: 110px;
margin-right: 10px;
color: #8D8D8D;
font-size: 0px;
display: inline-block;
white-space: nowrap;
list-style: none;
`
const VoteHelpful = styled.a`
cursor: pointer;
font-weight: normal;
color: #000;
margin-left: 0px;
font-size: 12px;
display: flex;
flex-direction: row;
height: 20px;
line-height: 20px;
padding-left: 0px;
margin-right: 12px;

`
const FlagList = styled.li`
margin-right: 10px;
color: #8D8D8D;
display: inline-block;
white-space: nowrap;
`
// font-size: 0px;
const ReviewBodyField = styled.div`
display: block;
width: 70%;
`
const VoteUp = styled.div`
transform: rotate(-90deg);
margin-right: 12px;
font-size: 12px;
height: 20px;
line-height: 20px;
width: 48px;
`
const VoteDown = styled.div`
transform: rotate(90deg);
margin-right: 12px;
font-size: 12px;
height: 20px;
line-height: 20px;
width: 48px;
`

export {
  ReviewsEntryBlockWrapper, 
  RatingSubBlockWrapper, 
  ReviewEntryStarWrapper, 
  RateBarBlockWrapper, 
  BarTitleWrapper, 
  Bar, 
  Ball, 
  BarDescriptionWrapper, 
  Description, 
  ReviewTitleCommentWrapper, 
  TitleWrapper, 
  CommentWrapper, 
  UserInfoSubBlockWrapper, 
  UserInfoWrapper, 
  VoteWrapper,
  ReviewBodyField,
  Spacer,
  VoteHelpful,
  VoteList,
  FlagList,
  VoteUp,
  VoteDown
}