import React from 'react';
import Modal from 'react-modal';
import StarRatingComponent from 'react-star-rating-component';
import Rating from 'react-rating';
import modalStyle from '../session_form/modal_style';
import { merge } from 'lodash';

class Reviews extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      modalOpen: false,
      review: {
        movie_id: this.props.movieId,
        rating: null,
        body: ''
      }
    };
    // if ( this.props.usersReview ) {
    //   this.state.review.id = this.props.usersReview.id;
    //   this.state.review = this.props.usersReview;
    //   this.state.review.body = this.state.review.body || '';
    // }

    this.handleBodyInput = this.handleBodyInput.bind(this);
    this.handleRatingInput = this.handleRatingInput.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleDelete = this.handleDelete.bind(this);
  }

  componentDidMount() {
    this.props.requestReviews(this.props.movieId);
  }

  componentWillReceiveProps(nextProps) {
    if ( this.props.usersReview !== nextProps.usersReview &&
         nextProps.usersReview) {
      this.setState({review: nextProps.usersReview});
    }
  }

  handleBodyInput(e) {
    const review =
      merge({}, this.state.review, {body: e.target.value});
    this.setState({review});
  }

  handleRatingInput(rating) {
    const review =
      merge({}, this.state.review, {rating});
    this.setState({review});
  }

  handleSubmit(e) {
    e.preventDefault();
    if ( this.props.usersReview ) {
      this.props.updateReview(this.state.review)
        .then(() => this.setState({modalOpen: false}));
    } else {
      this.props.createReview(this.state.review)
        .then(() => this.setState({modalOpen: false}));
    }
  }

  handleDelete(e) {
    e.preventDefault();
    this.props.deleteReview(this.props.usersReview)
      .then(() => this.setState({
        modalOpen: false,
        review: {
          movie_id: this.props.movieId,
          rating: null,
          body: ''
        }
      }));
  }

  render() {
    let reviewButton;
    if (!this.props.currentUser) {
      reviewButton = '';
    } else if (this.props.usersReview ) {
      reviewButton = (
        <button onClick={() => this.setState({modalOpen: true})}>
          Edit Review
        </button>
      );
    } else {
      reviewButton = (
        <button onClick={() => this.setState({modalOpen: true})}>
          Add Review
        </button>
      );
    }

    let deleteButton = '';
    if ( this.props.usersReview ) {
      deleteButton = (
        <button className='review-submit'onClick={this.handleDelete}>
          Delete
        </button>
      );
    }

    const reviewList = (
      Object.values(this.props.reviews).reverse().map((review) => {
        let deleteReviewButton;
        if (this.props.usersReview &&
              this.props.usersReview.id === review.id) {
          deleteReviewButton = (
            <button onClick={this.handleDelete} className='small-delete'
                    title='delete review'>
              x
            </button>
          );
        } else {
          deleteReviewButton = '';
        }

        return (
          <li className='review-item'
              key={review.id}>

            <h4>By   {review.userName}</h4>
              <StarRatingComponent
                 className='stars'
                 name="rating"
                 starCount={5}
                 value={review.rating}
                 starColor={'#FFD700'}
                 emptyStarColor={'#ccc'}
                 editing={false}/>
               <p>{review.body}</p>
          </li>
        );
      })
    );

    return(
      <div className='reviews-container'>
        <h2 className='review-header'>Reviews</h2>
        <br></br>
        <form className='review-form'>
          <div className='review-inside'>
            <div className='reviewing'>
              <h5>Rating:</h5> <StarRatingComponent
                name="rating"
                starCount={5}
                value={this.state.review.rating}
                onStarClick={this.handleRatingInput}
                starColor={'#FFD700'}
                emptyStarColor={'#ccc'}/>
            </div>

            <div>
              <h5>Review:</h5>
              <textarea onChange={this.handleBodyInput}
                name='body'
                value={this.state.review.body}></textarea>
            </div>

            <button className='review-submit' onClick={this.handleSubmit}>Submit</button>
            {deleteButton}
          </div>
        </form>
        <br></br>
        <ul className='review-list'>
          {reviewList}
        </ul>
      </div>
    );
  }
}

export default Reviews;
