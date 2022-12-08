import React, { useState } from "react";
import { Button, Error, Input, FormField, Label } from "../styles";

function ReviewForm (props){



    return (
        <form onSubmit={props.handleSubmit}>
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
        </form>
    )
}

export default ReviewForm;