---
layout: default
---
<section class="posts">
	{% for post in site.posts %}
	<div class="post">
		<h1><a href="{{ site.url }}{{ post.url }}">{{ post.title }}</a></h1>
		<time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date_to_string: "ordinal", "US" }}</time>
		{% if post.header-image %}
		<img src="{{ site.url }}{{ post.header-image }}">
		{% endif %}
	</div>

	{% endfor %}
</section>


<!-- <section class="posts">
	<ul>
	<p style="text-align: center;">Blog</p>
	{% for category in site.categories %}
		{% if category[0] == "blog" %}
			{% for post in category[1] %}
				<li><a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a><time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date_to_string: "ordinal", "US" }}</time></li>
			{% endfor %}
			{% endif %}
	{% endfor %}
	</ul>
	<ul class="fiction">
	<p style="text-align: center;">Fiction</p>
	{% for category in site.categories %}
		{% if category[0] == "fiction" %}
			{% for post in category[1] %}
				<li class="fiction"><time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date_to_string: "ordinal", "US" }}</time><a class="fiction" href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a></li>
			{% endfor %}
		{% endif %}
	{% endfor %}
	</ul>
</section> -->