module ApplicationHelper
  
  def link_to_name obj
    link_to obj.name, obj rescue nil
  end

  def google_analytics
    %Q!<script type="text/javascript">

      var _gaq = _gaq || [];
      _gaq.push(['_setAccount', 'UA-21974283-1']);
      _gaq.push(['_trackPageview']);

      (function() {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
      })();

    </script>!
  end
  
  def markdown txt
    raw(RedCloth.new(txt || '').to_html)
  end
  
  def div_of_divs_for band, details = :details, method = :description, &block
    html = div_for band, 'details' do
      band.send(details).each do |detail|
        div_for detail do
          if block_given?
            block.call detail
          else
            markdown detail.send(method)
          end
        end
      end
    end
    return html
  end
  
  def cleardiv
    content_tag :div, nil, :class => 'clearfix'
  end
end
