import React, {useEffect} from 'react'
import {getCategory, getListings} from '../actions/actions'
import {connect} from 'react-redux'
import {Link} from 'react-router-dom'


const CurrentCategory = (props) => {

    useEffect(() => {
        getCategory(props.slug)
        getListings(props.categoryId)
    }, [props.slug, props.categoryId])
    
        return (
            <div id='categorycontainer'>
                <div id='categoryheader'>

                </div>
                <div id='catleft'>
                    <h3>*category here*</h3>
                    <input type='checkbox' id='titlefilter' name='title' />
                    <label> search titles only</label>
                    <input type='checkbox' id='imagefilter' name='image' />
                    <label> has image</label>
                    <input type='checkbox' id='todayfilter' name='today' />
                    <label> posted today</label>
                    <input type='checkbox' id='duplicatefilter' name='duplicate' />
                    <label> bundle duplicates</label>
                    <input type='checkbox' id='nearbyfilter' name='nearby' />
                    <label> include nearby areas</label>
                    <div>
                        <h4>reset</h4>
                        <h4>update search</h4>
                    </div>
                </div>
                <div id='catsearch'>
                    <input type='text' placeholder={`search ${props.name}`} />
                    <button>*Search*</button>
                </div>
                <div>
                    <p>*view mode*</p>
                </div>
                <div className='catlist'>
                    <h1>{props.name}</h1>
                    <h3><Link to={'/add/' + props.categoryId}>Add a Post</Link></h3>
                    <ul>
                        {props.listings.map(listing => (
                            <li key={'listing' + listing.id}><p><Link to={'/listing/' + listing.id}>{listing.name}</Link></p></li>
                        ))}          
                    </ul>
                </div>
            </div>
        )
    
}

function mapStateToProps(appState, ownProps) {
    return {
        name: appState.currentCategory.name,
        slug: ownProps.match.params.slug,
        categoryId: appState.currentCategory.id,
        listings: appState.currentListings
    }
}

export default connect(mapStateToProps)(CurrentCategory)