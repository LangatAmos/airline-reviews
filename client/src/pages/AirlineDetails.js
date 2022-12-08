import React from 'react';
import { useEffect, useState } from "react";
import { useParams } from "react-router-dom"
import Review from '../components/Review';
import ReviewForm from '../components/ReviewForm';
import styled from "styled-components";



function AirlineDetails(props){

    const [airline, setAirline] = useState([]);
    const [review, setReview] = useState({});


    const {id} = useParams()


    useEffect(() =>{
        fetch(`/airlines/${id}`)
        .then(response => response.json())
        .then((airline) => setAirline(airline))
        // .then((airline) => console.log(airline.reviews))
    },[])

    const reviews = airline.reviews
    reviews?.map((rev)=>{
        return (rev.title)
    })

    function handleChange(e){
        e.preventDefault()
        // console.log('name:', e.target.name, 'comment:', e.target.value)
        setReview(Object.assign({}, review, {[e.target.name]: e.target.value}))

        console.log("review:", review)
    }

    function handleSubmit(e){
        e.preventDefault()

        const airline_id = airline.id
        const user_id = props.user.id

        fetch("/reviews", {
            method: 'POST',  
            headers:{
                'Content-Type': 'application/json'
                },
                body: JSON.stringify({...review, airline_id, user_id})
            })
        .then(response => response.json())
        .then((data)=> setAirline(data))

    }





    return (
        <Wrapper id='airlinedetail'>
            {/* <h1>This is the the details of each Airline</h1> */}
            <DetailsTtitle>{airline.name}</DetailsTtitle>
            <DetailsImage src={airline.image_url} alt={airline.name}/>
            <AirlineDescription>{airline.description}</AirlineDescription>

            <ReviewListTitle>Reviews for {airline.name}</ReviewListTitle>
            
            <ReviewList>{  reviews?.map((rev, index)=>{
                    return (
                        <div key={index}>
                            <h5>{rev.title}</h5>
                            <p>{rev.comment}</p>
                            <p>By: {rev.user.username}</p>
                        </div>
                    )
                })
                }
                {/* <Review reviews = {reviews}/> */}
            </ReviewList>

            <h2>create new review</h2>

            <div>
                <ReviewForm
                handleChange={handleChange}
                handleSubmit={handleSubmit}
                />

            </div>
            
        </Wrapper>
    )
}

const Wrapper = styled.div`
max-width: 100%;
margin: 30px;
flex-wrap: wrap;
`;

const ReviewList = styled.div`
display: flex;
flex-direction: column;
align-items: left;
line-height: 1.5em;
font-size: 1em;
`;

const ReviewListTitle = styled.h4`
font-size: 1.5em;
color: blue;
`;

const AirlineDescription = styled.p`
font-size: 1.5em;
line-height: 1.5em;
`
const DetailsImage = styled.img`
border-radius: 3px;
width: 100%
`
const DetailsTtitle = styled.h1`
text-align: center
font-size: 2em;
color: blue;
padding: 0.5em;
`

export default AirlineDetails;