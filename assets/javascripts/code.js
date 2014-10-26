jsToolBar.prototype.elements.pretty = {
    type: 'button',
    title: 'Pretty Print code',
    fn: {
        wiki: function() {
            this.encloseLineSelection('<pre class="prettyprint">\n', '\n</pre>')
        }
    }
},
jsToolBar.prototype.elements.ruby = {
    type: 'button',
    title: 'Original Highlighted Ruby',
    fn: {
        wiki: function() {
            this.encloseLineSelection('<pre><code class="ruby">\n', '\n</code></pre>')
        }
    }
}
