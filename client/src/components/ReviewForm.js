import React, { useState } from "react";
import { Button, Error, Input, FormField, Label } from "../styles";
import styled from "styled-components";

function ReviewForm (props){



    return (
        <Form onSubmit={props.handleSubmit}>
            <Title>create new review</Title>
            <FormField>
            <Label htmlFor="title">Title</Label>
            <Input
            name="title"
            type="text"
            id="review-title"
            autoComplete="off"
            value={props.title}
            onChange={props.handleChange}
            />
            </FormField>
            <FormField>
            <Label htmlFor="comment">Comment</Label>
            <Input
            name= "comment"
            type="text"
            id="review-comment"
            autoComplete="off"
            value={props.comment}
            onChange={props.handleChange}
            />
            </FormField>
            <FormField>
                <Button type="submit">Submit Review</Button>
            </FormField>
        </Form>
    )
}

const Form = styled.form`
display: flex;
flex-direction: column;
align-items: center;
width: 80%;
height: 30vh;
margin-top: 2rem;
`

const Title = styled.p`
text-align: center;
color: #5618f5;
font-size: 20px;
`

export default ReviewForm;