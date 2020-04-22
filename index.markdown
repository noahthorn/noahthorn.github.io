---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

title: Try Cypress
layout: default
---

<section class="posts">
	<ul>
		{% for post in site.posts %}
		{% if post.layout == 'fiction' %}
		<li class="fiction"><a class="fiction" href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a><time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date_to_string: "ordinal", "US" }}</time></li>
		{% else %}
		<li><a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a><time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date_to_string: "ordinal", "US" }}</time></li>
		{% endif %}
		{% endfor %}
	</ul>
</section>