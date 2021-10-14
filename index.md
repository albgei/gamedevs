## Welcome to gamedevs


# blogs


- [blog-2021-10-07](https://albgei.github.io/gamedevs/blog-2021-10-07)




{%- assign categories = site.categories | sort -%}
{%- for category in categories -%}

{%- assign categoryName = category[0] -%}
{%- assign categoryNumPosts = category[1] | size -%}
<h2 id="{{categoryName | uri_escape | downcase }}">{{ categoryName }} ({{ categoryNumPosts }})</h2>

<ul>
    {% assign sorted_posts = category[1] | reversed %}
    {% for post in sorted_posts %}
    <li>
        <a href="{{ post.url }}"></a> -
        <time datetime="{{ post.date | date_to_xmlschema }}"
              itemprop="datePublished">{{ post.date | date: "%b %-d, %Y" }}</time>
    </li>
    {% endfor %}
</ul>

{%- endfor -%}
