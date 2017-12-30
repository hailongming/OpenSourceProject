import scrapy
from ssdut.items import SsdutItem


class SsdutSpider(scrapy.Spider):
    name = "ssdut"
    start_urls = [
        "http://ssdut.dlut.edu.cn/index/bkstz.htm",
    ]

    def parse(self, response):
        for li in response.xpath('/html/body/div[4]/div/div[2]/div/div/ul/li'):
            item = SsdutItem()
            item['title'] = li.xpath('a/text()').extract()
            item['link'] = li.xpath('a/@href').extract()
            item['time'] = li.xpath('span/text()').extract_first()
           # time = li.xpath('span/text()').extract_first()
           # print time.encode('utf-8')
            yield item
        next_page = response.css('a.Next::attr(href)').extract_first()
        if next_page is not None:
            next_page = response.urljoin(next_page)
            yield scrapy.Request(next_page, callback=self.parse)
