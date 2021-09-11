import React from 'react';
import PropTypes from 'prop-types';

const ArticlePreview = ({title, author, date, preview, id}) => {
  return(
    <div className="article-preview__preview">
        <h3 className="article-preview__heading">{title}</h3>
        <div className="article-preview__publish">
          <p className="article-preview__publish--author" >{author}</p>
          <p className="article-preview__publish--date">{date}</p>
        </div>
        <p className="article-preview__text">{preview}</p>
        <a href={`/articles/${id}`} className="article-preview__article-link">Read More...</a>
      </div>
  )
}

export default ArticlePreview;
