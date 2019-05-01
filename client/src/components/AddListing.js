import React, {useState} from 'react'
import {addListing} from '../actions/actions'
import {connect} from 'react-redux'


const AddListing = (props) => {
    const [name, setName] = useState('')
    const [listing, setListing] = useState('')

    function handleSubmit(e) {
        e.preventDefault()

        addListing(props.match.params.categoryId, name, listing).then(() => {
        props.history.goBack()})
    }

    return (
        <form onSubmit={handleSubmit}>
            <label>Title</label><br />
            <input type='text' id='name' name='name' placeholder='Enter a title' onChange={e => setName(e.target.value)} />
            <label>Listing</label><br />
            <textarea id='listing' name='listing' placeholder='Enter text...' onChange={e => setListing(e.target.value)} />
            <button type='submit'>Submit</button>
        </form>
    )

}
function mapStateToProps(appState, ownProps) {
    return {
        ...ownProps,
        slug: appState.currentCategory.slug
    }
}
export default connect(mapStateToProps)(AddListing)