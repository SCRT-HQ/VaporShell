  (function() {
      'use strict';
      var headingNodes = [],
          results, link,
          tags = ['h2', 'h3', 'h4', 'h5', 'h6'];

      tags.forEach(function(tag) {
          results = document.getElementsByTagName(tag);
          Array.prototype.push.apply(headingNodes, results);
      });

      headingNodes.forEach(function(node) {
          link = document.createElement('a');
          link.className = 'deepLink';
          link.textContent = '¶';
          link.href = '#' + node.getAttribute('id');
          node.appendChild(link);
      });

  })();