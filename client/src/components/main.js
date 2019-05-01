import React, {Component} from 'react'
import {getCategories} from '../actions/actions'
import { connect } from 'react-redux';
import {Link} from 'react-router-dom'

import ChildCategories from './ChildCategories'


class Main extends Component {

    componentDidMount() {
        getCategories()
    }

    render() {
        return (
            <div id='maincontainer'>
                <div id='leftside'>
                    <h2>Ryanslist</h2>
                    <p>create a posting</p>
                    <p>my account</p>
                    <input type='text' placeholder='search ryanslist' />
                    <div className='group1'>
                        <p>help, faq, abuse, legal</p>
                        <p>avoid scams and fraud</p>
                        <p>personal safety tips</p>
                        <p>terms of use</p>
                        <p>privacy policy</p>
                        <p>system status</p>
                    </div>
                    <div className='group2'>
                        <p>about ryanslist</p>
                        <p>ryanslist is hiring in sf</p>
                        <p>ryanslist open source</p>
                        <p>ryanslist blog</p>
                        <p>best-of-ryanslist</p>
                        <p>ryanslist TV</p>
                        <p>"ryanslist joe"</p>
                        <p>ryan connects</p>
                    </div>
                </div>
                <div id='center'>
                    <div className='allcats'>
                        {this.props.categories.map(cat => (
                            <div>
                                <h3><Link to={`/${cat.slug}`}>{cat.name}</Link></h3>
                                <ChildCategories list={cat.child_categories} />
                            </div>
                        ))}
                    </div>
                </div>
                <div id='rightside'>
                    <p>*cities*</p>
                    <p>*cities*</p>
                    <p>*cities*</p>
                    <p>*cities*</p>
                    <p>*cities*</p>
                    <p>*cities*</p>
                    <p>*cities*</p>
                    <p>*cities*</p>
                    <p>*cities*</p>
                    <p>*cities*</p>
                    <p>*cities*</p>
                    <p>*cities*</p>
                    <p>*cities*</p>
                    <p>*cities*</p>
                </div>
            </div>
        )
    }
}
function mapStateToProps(appState) {
    return {
        categories: appState.categories
    }
}
export default connect(mapStateToProps)(Main)